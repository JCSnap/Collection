# Intro

This is a collection of shortcuts and configurations for my workflow. I am currently using an M1 Macbook Air. Just in case I get a new laptop in the future, this will be a good starting point to get to back on track.
Others might also be able to find something useful here.

## Macbook

### Extensions (From Most Used to Least Used)

Alfred - For
Alt Tab
Shottr
Hustlr

For my mac, I use Alfred for its various features, and one particular feature that I find the most useful is its search feature, which is way better than Mac's inbuilt Spotlight. Thus, I have replaced my CMD + Space to toggle the

## Shell

Oh My Zsh - syntax highlighting and auto completion for shell commands

## Vim

These are the Vim commands that I use. Note that commands are case sensitive. Note that the "+" is not meant to be a command to be pressed, it is used to denote "plus" in this context.

`o` Create a new line and start writing. `i` goes into insert mode without creating a new line, though I don't really use it  
`c i "` Replace and edit the closest string in quotation mark. You can switch out " to [ for the same effect for strings in [], or anything similar  
`dd` Delete the current line (and copy to the vim clipboard. Note that the vim clipboard is different from your laptop's clipboard)  
`d` Delete selection (and copy to vim clipboard)  
`NUMBER + dd` Delete number of lines
`u` Undo. Usually used after you have deleted something or inserted something
`V` Highlight the whole line  
`p` Paste whatever that is in your vim clipboard. I normally use the macbook clipboard though  
`LINE NUMBER + G` Go to the line number  
`w` Navigate to the next word. Likewise, you can use `NUMBER + w` to jump number of words ahead  
`e` Jump to end of current word  
`b` Navigate to the previous word, basically the opposite of `w`. Likewise, you can use `NUMBER + b` to jump number of words back  
`s` Substitute the current highlighted word/line(s). Normally used after you have selected a chunk  
`dw` Delete the current word  
`NUMBER + Arrow up/down` Navigate number of lines up or down relative to current line. Yes, I use arrow keys. I also normally use it after highlighting with `V`. For example, if I want to select the function that is 5 lines long, I would do `V 5 ARROW DOWN`  
`0` Go to the start of the current line  
`$` Go to the end of the current line  
`G` Go to the last line in the file. Normally I used it when I highlight the line with `Shift + V` then use to to highlight until the end of the line
`>` Add identation after highlighting the whole code snippet. `2 + >` for 2 identations and so on. Likewise, use `<` for "reverse" indentation

These should be sufficient to do like 90% of the tasks. Here are some other commands
`OPTION + arrow key` Swap positions of lines/code blocks
`CTRL + arrow key` Start selecting vertically, when will then be accompanied by either `x` to delete or `I` to insert. Which I normally use it to comment out chunks of code blocks/delete comments of chunks of code blocks  
`zz` Move the cursor to the middle of the screen
`GV` Reselect the previously selection. I normally use this when I select a code block and add indentation with `>`. Then I realized I need more indentation, thus I had to reselect the previous code block to add another indentation  
`^` Go to the first non white-space character of the line

Note that these are just the basic commands, and the best way to remember them is to actually experiment and use them. You should also try chaining different commands together and notice the patterns (eg. if I know what `w` does and what `b` does, and I know `NUMBER + w` works, I can assume that `NUMBER + b` would also work. The learning curve is quite steep, but once you get the hang of it, it actually helps a lot in improving efficiency. I am still actively trying. You will start to weed out the omes that you find helpful and remembering them will come naturally. Different people have different workflows, so it is completely fine if you find some of these redundant.
