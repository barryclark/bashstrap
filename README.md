Bashstrap
=========

Bashstrap is a quick way to spruce up OSX terminal. It cuts out the fluff, adds in timesaving features, and provides a solid foundation for customizing your dotfiles.

<img src="https://raw.github.com/barryclark/bashstrap/master/screenshot.png" alt="screenshot" />

### Feature list

**Faster directory navigation**

- Jump directories extremely quickly without having to set aliases, using Z (one of my favorite features!)
- Open your current directory in Sublime Text
- Tab bar displays your current directory
- Lots of quick shortcut aliases that I use for git and moving around directories

**Customized bash prompt line**

- Git branch status inline
- ⚡ ahoy! An easily customizable symbol 
- Stripped out extraneous text 	

**Updated color scheme**

- Colored 'ls'
- Syntax highlighted 'cat'

### Installation - To your home dir (quick/simple)

1. Back up your dotfiles:

		mv ~/.bash_profile ~/.bash_profile_backup
		mv ~/.bashrc ~/.bashrc_backup
		mv ~/.gitconfig ~/.gitconfig_backup

2. Copy into your home dir:

		cd; curl -#L https://github.com/barryclark/bashstrap/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,screenshot.png}

3. [Install iTerm](http://www.iterm2.com/#/section/downloads)

### Installation - To a folder (advanced) 

1. Clone this repo to wherever you want, I keep mine in ~/Code/dotfiles. 

		cd ~/your/dir
		git clone git@github.com:barryclark/bashstrap.git .

2. Back up your current dotfiles (optional)

		cp ~/.bash_profile ~/.bash_profile_old
		cp ~/.bashrc ~/.bashrc_old
		cp ~/.gitconfig ~/.gitconfig_old

3. Create symlinks to the new dotfiles

		ln -s ~/.bash_profile /your/path/to/.bash_profile
		ln -s ~/.bashrc /your/path/to/.bashrc
		ln -s ~/.gitconfig /your/path/to/.gitconfig
		ln -s ~/.gitignore /your/path/to/.gitignore
		ln -s ~/.hushlogin /your/path/to/.hushlogin

4. [Install iTerm](http://www.iterm2.com/#/section/downloads)

### Additional instructions

- Pointing Z to the right place - Update the last line of .bash_profile to point to wherever you installed z.sh to. For me it's ~/Code/dotfiles/z.sh. 

- Recommended iTerm settings

	- Set font to 16pt Menlo regular in iTerm Preferences > Profiles > Default > Text > Regular Font. Make sure you change the Non-ASCII version to be the same too.
	- Switch to the non-bold font by unchecking "Draw bold text in bold font" in iTerm Preferences > Profiles > Default > Text > Text Rendering.
	- Lighter blue for the directory highlighting. iTerm Preferences > Profiles > Default > Colors > click Blue and make it lighter.

#### See my blog post [Creating Bashstrap](http://barryclark.co/creating-bashstrap) for more details on how everything's configured. 

I'm no expert at terminal customization, I'd love to learn more. Comments and pull requests are welcomed.