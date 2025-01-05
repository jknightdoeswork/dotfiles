https://superuser.com/questions/232373/how-to-tell-git-which-private-key-to-use

~/.gitconfig:

[includeIf "gitdir:~/code/"]
	path = ~/code/.gitconfig

~/code/.gitconfig

[user]
	name = Jason Knight
	email = 00jknight@gmail.com
[core]
    sshCommand = "ssh -i ~/.ssh/personal"
