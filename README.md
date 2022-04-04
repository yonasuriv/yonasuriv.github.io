# Setting up everything
## Set up git in your terminal/shell
_(Don’t type the $; that just indicates that you’re doing this at the command line.)_

Open a terminal/shell and type:

```$ git config --global user.name "Your name here"```

```$ git config --global user.email "your_email@example.com"```

I also do

```$ git config --global color.ui true```

```$ git config --global core.editor emacs```

The first of these will enable colored output in the terminal; the second tells git that you want to use emacs.

## Set up SSH in your computer
- Look to see if you have files ~/.ssh/id_rsa and ~/.ssh/id_rsa.pub.
- If not, create such public/private keys: Open a terminal/shell and type:
```$ ssh-keygen -t rsa -C "your_email@example.com"```

- Copy your public key (the contents of the newly-created id_rsa.pub file) into your clipboard. 
(it's located in ~/.ssh/ by default on Linux)
- Paste your ssh public key into your github account settings.
  - Go to your github Account Settings
  - Click on “[SSH Keys](https://github.com/settings/keys)” (or GitHub Account/Settings/SSH Keys)
  - Click “Add SSH Key” on the right.
  - Add a label (like “My laptop”) and paste the public key into the big text box.
  

In a terminal/shell, type the following to test it:
```$ ssh -T git@github.com```

If it says something like the following, **it worked**:

> Hi username! You've successfully authenticated, but Github does not provide shell access.


 

## Creating your personal token and linking it
You'll need to set up a login and email address in the local GIT client for Linux

Go to https://github.com/settings/ and generate your new token

Copy your token selected 

```$ git config --global user.name "yonasuriv"``` 
```$ git config --global user.email "diricojonathan@gmail.com"``` 
```$ git config -l```

After configuring GIT, we can use it to access GitHub. Use your Github Personal Access Token instead of the password

```$ git clone $ git clone git@github.com:yonasuriv/yonasuriv.github.io.git``` 

> $ Username for 'https://github.com' : **Enter your github username**
> 
> $ Password for 'https://github.com' : **Enter your github personal access token here**


You may now cache the provided record on your computer to store the token.

```$ git config --global credential.helper cache```

> To verify, try pulling with -v.
> 
> $ git pull -v
> You can remove the cache record if necessary.
> 
> $ git config --global --unset credential.helper 
> $ git config --system --unset credential.helper

# Getting the repository
1- Open your terminal and navigate to the folder where do you want your repository to be downloaded
> You can also use the cd command, like
> $ cd /home/yonasuriv/Proyectos/GitHub
> remember to create a directory in case it doesn't exist with mkdir command

2- Paste the following

> $ git clone git@github.com:yonasuriv/yonasuriv.github.io.git

