# To get this repository in your desktop:

##  SSH key
### Generating your SSH key
Open your terminal and write: 
$ ssh-keygen -t ed25519 -C "your@email.com"

The following will be asked:
Enter file in which to save the key (/home/yonasuriv/.ssh/id_ed25519): press_enter
Enter passphrase (empty for no passphrase): set_your_passphrase
Enter same passphrase again: repeat_your_passphrase

### Adding your SSH key to the ssh-agent
Start the ssh-agent in the background

$ eval "$(ssh-agent -s)"
> Agent pid 59566

Add your SSH private key to the ssh-agent. If you created your key with a different name, or if you are adding an existing key that has a different name, replace id_ed25519 in the command with the name of your private key file.

$ ssh-add ~/.ssh/id_ed25519

For more info: 
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

Now go to /home/yonasuriv/.ssh

Open id_ed25519.pub and copy the code inside

Go to https://github.com/settings/keys and create a new key

Set up a key name and paste the public key you copied from your .pub file

# Getting the repository
1- Open your terminal and navigate to the folder where do you want your repository to be downloaded
> You can also use the cd command, like
> $ cd /home/yonasuriv/Proyectos/GitHub
> remember to create a directory in case it doesn't exist with mkdir command

2- Paste the following

> $ git clone git@github.com:yonasuriv/yonasuriv.github.io.git
