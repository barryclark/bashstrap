Bashstrap - Love your terminal
==============================

If you're still using the stock OSX terminal, Bashstrap is a quick way to spruce it up, and provides a solid foundation for customizing your dotfiles.

<img src="https://raw.github.com/barryclark/bashstrap/master/screenshot.png" alt="screenshot" />

### Feature list

- Beautiful, minimalist color scheme
	- Colored 'ls'
	- Syntax highlighted 'cat'

- Customized bash prompt line
	- Stripped out of a lot of extraneous text 
	- In line Git branch status
	- An easily customizable symbol (⚡ ahoy!)

- Faster directory navigation
	- Z, for jumping directories extremely quickly without having to set aliases (one of my favorite features!)
	- Tab bar displays the directory that you're in
	- Open your current directory in Sublime Text
	- Lots of quick shortcut aliases that I use for git and moving around directories

### Installation

1. [Install iTerm](http://www.iterm2.com/#/section/downloads)

2. Clone this repo to wherever you want, I keep mine in ~/Code/dotfiles. 

3. Back up your current dotfiles (optional)

		cp ~/.bash_profile ~/.bash_profile_old
		cp ~/.bashrc ~/.bashrc_old
		cp ~/.gitconfig ~/.gitconfig_old

4. Create symlinks to the new dotfiles

		ln -s ~/.bash_profile /your/path/to/.bash_profile
		ln -s ~/.bashrc /your/path/to/.bashrc
		ln -s ~/.gitconfig /your/path/to/.gitconfig
		ln -s ~/.gitignore /your/path/to/.gitignore
		ln -s ~/.hushlogin /your/path/to/.hushlogin

5. Open a new iTerm tab!

### Additional instructions

- Pointing Z to the right place - Update the last line of .bash_profile to point to wherever you installed z.sh to. For me it's ~/Code/dotfiles/z.sh. 

- Recommended iTerm settings

	- Set font to 16pt Menlo regular in iTerm Preferences > Profiles > Default > Text > Regular Font. Make sure you change the Non-ASCII version to be the same too.
	- Switch to the non-bold font by unchecking "Draw bold text in bold font" in iTerm Preferences > Profiles > Default > Text > Text Rendering.
	- Lighter blue for the directory highlighting. iTerm Preferences > Profiles > Default > Colors > click Blue and make it lighter.

#### See my blog post [Creating Bashstrap](http://barryclark.co) for more detailed info on how everything's configured. 

I'm no expert at terminal customization, I'd love to learn more. Comments and pull requests are really welcomed!