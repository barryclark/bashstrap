Bashstrap is a quick way to spruce up OSX terminal. It cuts out the fluff, adds in timesaving features, and provides a solid foundation for customizing your terminal style.

<img src="https://raw.github.com/barryclark/bashstrap/master/screenshot.png" alt="screenshot" />

### Feature list

**Faster directory navigation**

- Open your current directory in Sublime Text (with just 2 characters)
- Jump directories rapidly, without having to set aliases—using Z (my favorite feature!)
- Tab bar displays your current directory
- Lots of quick shortcut aliases that I use for git and moving around directories

**Customized bash prompt line**

- Git branch status inline
- ☠ ahoy! An easily customizable symbol
- Stripped out extraneous text

**Updated color scheme**

- Colored 'ls'
- Syntax highlighted 'cat'

### Installation: dotfiles (2 mins)

1. Back up your current dotfiles (optional):

		mv ~/.bash_profile ~/.bash_profile_backup
		mv ~/.bashrc ~/.bashrc_backup
		mv ~/.gitconfig ~/.gitconfig_backup

2. Install Bashstrap into your home dir:

		cd; curl -#L https://github.com/barryclark/bashstrap/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,screenshot.png}
		
3. Run `source ~/.bash_profile` or restart iTerm or terminal.

### Installation: iTerm (10 mins)

Following these steps will make your iTerm look identical to mine in the screenshot above.

1. [Install iTerm](http://www.iterm2.com/#/section/downloads).
2. Turn off long tab titles: *iTerm Preferences > Appearance > Windows & Tab Titles > uncheck them all*
3. Prettier font: *iTerm Preferences > Profiles > Default > Text > Regular Font & Non-ASCII > 16pt Menlo regular*
4. Unbold font: *iTerm Preferences > Profiles > Default > Text > Text Rendering > uncheck "Draw bold text in bold font"*
5. Lighter blue for the directory highlighting: *iTerm Preferences > Profiles > Default > Colors > click Blue and make it lighter*
6. Make default window size bigger: *iTerm Preferences > Profiles > Default > Window > Setting for New Windows > I like Columns: 80, Rows 28*

### For more on configuring Bashstrap, see my blog post: [Creating Bashstrap](http://barryclark.co/creating-bashstrap)
