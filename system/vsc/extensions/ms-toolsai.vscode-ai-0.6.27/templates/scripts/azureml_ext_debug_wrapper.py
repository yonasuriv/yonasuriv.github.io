import argparse
import os
import runpy
import threading
import time
import sys
import subprocess
import debugpy

def start_debug_process():
    cancel_timeout = False
    thread = threading.Thread(target=wait_for_client_timeout, args =(lambda : cancel_timeout, ))
    thread.start()

    debugpy.listen(("0.0.0.0", <AZUREML_EXT_DEBUG_PORT>))

    with open('azureml-setup/azureml_ext_debugger_ready', "a+") as file:
        file.write('azureml_ext_debugger_ready')

    debugpy.wait_for_client()
    cancel_timeout = True

    with open('azureml-setup/azureml_ext_experiment_running', "a+") as file:
        file.write('azureml_ext_experiment_running')

    runpy.run_path("<AZUREML_EXT_TRAIN_SCRIPT>", globals(), run_name="__main__")

def wait_for_client_timeout(cancel):
    timeout_in_sec = <AZUREML_EXT_DEBUGGER_TIMEOUT_SEC>
    check_cancel_period_in_sec = 5

    if timeout_in_sec < check_cancel_period_in_sec:
        check_cancel_period_in_sec = timeout_in_sec

    cycles = timeout_in_sec / check_cancel_period_in_sec

    while cycles > 0 and not cancel():
        cycles -= 1
        time.sleep(check_cancel_period_in_sec)

    if not cancel():
        debugpy.wait_for_client.cancel()
        with open('azureml-setup/azureml_ext_debugger_wait_timeout', "a+") as file:
            file.write('azureml_ext_debugger_wait_timeout')


if __name__ == "__main__":
    start_debug_process()
