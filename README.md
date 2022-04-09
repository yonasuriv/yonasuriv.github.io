<image src="https://readme-typing-svg.herokuapp.com?font=Iosevka&size=16&color=BC83E3&center=true&width=410&height=45&lines=Who's+gonna+save+the+world?">
<!-- # Setting up GitHub
# Getting the repository
- Open your terminal and navigate to the folder where do you want your repository to be downloaded
  - Navigate to the folder where do you want your repository to be downloaded
  - Open in terminal (right click)

> If using Linux, you can also use the *cd* command, like:
>
> $ cd /home/yonasuriv/Data Center/Web Server
>
> Remember to create the directory in case it doesn't exist with *mkdir* command!

- Paste the following:

> $ git clone git@github.com:yonasuriv/yonasuriv.github.io.git

## Setting up git in your terminal/shell
You'll need to set up a login and email address in the local GIT client for Linux

_(The $ is just an indicator that you are working on the terminal via command line)_

Open a terminal/shell and type:

```$ git config --global user.name "Jonathan Di Rico"```

```$ git config --global user.email "youremail@gmail.com"```

Optional:

```$ git config --global color.ui true```

```$ git config --global core.editor emacs```

The first of these will enable colored output in the terminal; the second tells git that you want to use emacs.

If you wanna see the data stored:

```$ git config -l```

## Setting up SSH in your computer
- Open a terminal/shell and type:

```$ ssh-keygen -t rsa -C "youremail@gmail.com"```

You will be asked some questions, just press enter 3 times.

> Generating public/private rsa key pair.
> 
> Enter file in which to save the key (/home/kali/.ssh/id_rsa):

A public (id_rsa.pub) and a private (id_rsa) key will be created

- Copy your public key (.pub) into your clipboard. 

> (it's located in ~/.ssh/ by default on Linux)

- Paste your ssh public key into your github account settings.
  - Go to your github Account Settings
  - Click on “[SSH and GPG keys] (https://github.com/settings/keys)”
  - Click “Add SSH Key” on the right.
  - Add a label (like “My laptop”) and paste the public key into the big text box.
  

In a terminal/shell, type the following to test it:
```$ ssh -T git@github.com```

If it says something like the following:

> Hi username! You've successfully authenticated, but Github does not provide shell access.

**Congratulations, it worked. You may now start working.**

> HINT: At the bottom of this guide I left you the basic commands in case you were absent from git for a while and you need to refresh your memory a bit.



# Fixing log in issues
If at any given point you are asked to use a personal access token, follow these steps:

## Creating your Personal Access Token
- Go to https://github.com/settings/tokens/new and generate your new token 
  - Selecting 'repo' only is OK.
  - Save your token (copy it, you will use it in the next step)

## Linking your PAS with your Terminal

```$ git clone git@github.com:yonasuriv/yonasuriv.github.io.git``` 

Now you will be asked to log in

Use your Github Personal Access Token instead of the password

> $ Username for 'https://github.com' : **Enter your github username**
> 
> $ Password for 'https://github.com' : **Enter your github personal access token here**


You may now cache the provided record on your computer to store the token.

```$ git config --global credential.helper cache```


 To verify, try pulling with -v.

```$ git pull -v```


> You can remove the cache record if necessary.

```$ git config --global --unset credential.helper```

```$ git config --system --unset credential.helper```
#
### Fast-reminder of the basics
- Use ```git init``` to initialize the repository.
- Use ```git add .``` to add all the files to the given folder.
- Use ```git status``` to view all the files which are going to be staged to the first commit.
- Use ```git commit -m 'your message'``` to save your changes
- Use ```git pull ```
- Use ```git push```
-->
