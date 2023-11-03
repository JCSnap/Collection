# Intro

This is a collection of shortcuts and configurations for my workflow. I am currently using an M1 Macbook Air. Just in case I get a new laptop in the future, this will be a good starting point to get to back on track.
Others might also be able to find something useful here.

# Macbook

## Extensions and Softwares (From Most Used to Least Used)

### Alfred

MUST HAVE. I bought the Powerpack but you don't have to. The search feature is far superior to Spotlight, which is why I replaced my CMD + Space with Alfred search. For example, `in [content]` will search for all the files that contain the content. Imagine having a CMD F feature, but instead of searching for the word in the current file, it searches for the word in your whole Mac. This is useful if you have like 20 pdfs worth of lecture slides downloaded in your mac and you want to open the correct lecture slide in the correct page based on a specific keyword. `find [file]` will open up the finder location of the file. You can also add custom workflows, many of which are open source and can be downloaded online. Some of the ones I have include the emoji workflow, where I just need to type in `emoji [description]` in the search to search for emojis, where I can copy by pressing enter. Another feature that I use a lot is the snippets, where you can pre-set keywords that when typed, will be auto converted to the full word. For example, I set my address as `!address`, which means I can just type that and the text will be converted to my address, this saves time + I no longer have to remember my postal code. I did the same for my email, fin number etc. Other features include the inbuilt calculator feature in the search (you will be surprised by how much you would use it), and being able to navigate to other parts of the system purely from the search. For example, I can open up the bluetooth settings by just entering `bluetooth` in the search. This gives you vim like navigation power for your mac and you can navigate to many places efficiency with just your keyboard

### Alt-Tab

ANOTHER MUST HAVE (especially if you are used to Window's alt tab). I still cannot get used to Mac's windows management. Especially if I have multiple windows of the same app (like chrome) open and I want to be able to navigate between each of them quickly. This brings the Windows navigation to your mac, and I wish I had discovered it sooner

### Shottlr

I used it a lot when I need to share screenshots but I do not want to screenshot the whole screen, just snippets of the screen. I configured the capture area to my F1 key. I can press `F1` and drag a selection box on the part of the screen that I want to screenshot, I can then copy it and paste it into telegram or whatever. The scroll capture is also useful if you want to screenshot a long webpage or your longass code.

### Hustl

This is a paid software and to be honest, you probably don't need it. I used it to timelapse my screen capture. Sometimes when I am coding something, I find timelapsing a good motivation to keep to glued to the screen and code, because you know that you are being "watched" and you know that if you idle for too long, it's gonna cause a hole in the end result. Different people works differently and timelapses is a thing for me, which is why I included this software

### Tinkertool

A tool for you to configure your macbook that could otherwise only be configured through the terminal. For example, I used it to disable animation and delay when showing the dock. The animation is nice but it's slow

### Rectangle

For you to create shotcuts to snap windows to left right etc. And move windows between desktops. Might be useful if you have external desktops.

### Dropzone

For you to temporarily drop and "store" images etc. in the dropzone which you can then use to access it elsewhere

### Postman

To test out APIs

### Other configuration

I use stage manager.  
I hide my dock, and make it appear only if my cursor goes to the bottom  
If my cursor goes to the bottom left, my mac goes to sleep  
I also set F keys to be the standard since I probably use the F keys more than any of the others.

### Shortcuts

`CMD + w` close the current tab (used mostly in browsers/VSCode)
`CMD + q` quit the current application

# Shell

Oh My Zsh - syntax highlighting and auto completion for shell commands. I also set up Github Copilot for vim, just in case I need some assistance while in vim, though I use VSCode (with Vim plugin) and Intellij (with Vim plugin) as my main editor.

# Vim

These are the Vim commands that I use. Note that commands are case sensitive. Note that the "+" is not meant to be a command to be pressed, it is used to denote "plus" in this context. My vim configuration is in another file.

## Navigation
`LINE NUMBER` + `G` Go to the line number.  
`w` Navigate to the next word. Likewise, you can use `NUMBER` +`w` to jump number of words ahead.  
`e` Jump to end of current word.  
`b` Navigate to the previous word, basically the opposite of `w`. Likewise, you can use `NUMBER` + `b` to jump number of words back.  
NUMBER` + `Arrow up/down` Navigate number of lines up or down relative to current line. Yes, I use arrow keys, though the recommended method is to use `J`/`K` instead of `Arrow down`/`Arrow up`. I am trying to correct to use `J`/`K` instead now. I also normally use it after highlighting with `V`. For example, if I want to select the function that is 5 lines long, I would do `V 5 ARROW DOWN`.  
`0` Go to the start of the current line.  
`$` Go to the end of the current line.  
`G` Go to the last line in the file. Normally I used it when I highlight the line with `V` then use to to highlight until the end of the line.  
`gg` Go to the start of the page.  
`Ctrl` + `F` Go forward by one page. Useful for jumping through your code fast.  
`Ctrl` + `B` Go backward by one page.  
`f` + `VALUE` Go to the first instace of the VALUE. For example, `f` + `c` will put your cursor at the next `c` in the line. This is one of the most used command. It also works for non alphanumeric values like `"` etc.  
`}` Go to the next paragraph. Helpful for jumping code blocks by code blocks.  
`{` Go to the previous paragraph.  
`H` Put your cursor at the High of the page.  
`M` Put your cursor at the Medium of the page. Let's say you have skipped many pages using `Ctrl` + `F` and reached the page that you want and the part that you want to edit is around the center of the page. Using this command is a quite way to get your cursor closer towards where you want it to be.  
`L` Put your cursor at the Low of the page.  

## Manipulation
`o` Create a new line and start writing. 
`i` goes into insert mode without creating a new line, though I don't really use it, still use `o` more often.    
`c i "` Replace and edit the closest string in quotation mark. You can switch out `"` to `[` for the same effect for strings in [], or anything similar.  
`c i t` Replace and edit the content inside the closest tag (divs etc.), useful for web development.  
`V` Highlight the whole line.  
`dd` Delete the current line (and copy to the vim clipboard. Note that the vim clipboard is different from your laptop's clipboard).  
`d` Delete selection (and copy to vim clipboard).  
`NUMBER` + `dd` Delete number of lines.
`u` Undo. Usually used after you have deleted something or inserted something.  
`p` Paste whatever that is in your vim clipboard. I normally use the macbook clipboard though.  
`s` Substitute the current highlighted word/line(s). Normally used after you have selected a chunk.  
`dw` Delete the current word.  
`D` Delete from your cursor to the end of the line.  
`>` Add identation after highlighting the whole code snippet. `2` + `>` for 2 identations and so on. Likewise, use `<` for "reverse" indentation.  

These should be sufficient to do like 90% of the tasks. Here are some other commands  
`OPTION` + `arrow key` Swap positions of lines/code blocks. This might be a VSCode shortcut instead of Vim.  
`CTRL` + `arrow key` Start selecting vertically, when will then be accompanied by either `x` to delete or `I` to insert. Which I normally use it to comment out chunks of code blocks/delete comments of chunks of code blocks.  
`zz` Move the cursor to the middle of the screen.  
`GV` Reselect the previously selection. I normally use this when I select a code block and add indentation with `>`. Then I realized I need more indentation, thus I had to reselect the previous code block to add another indentation.  
`^` Go to the first non white-space character of the line.  

Note that these are just the basic commands, and the best way to remember them is to actually experiment and use them. You should also try chaining different commands together and notice the patterns (eg. if I know what `w` does and what `b` does, and I know `NUMBER` + `w` works, I can assume that `NUMBER` + `b` would also work. The learning curve is quite steep, but once you get the hang of it, it actually helps a lot in improving efficiency. I am still actively trying. You will start to weed out the omes that you find helpful and remembering them will come naturally. Different people have different workflows, so it is completely fine if you find some of these redundant.

## VSCode

VSCode is my main editor, and here are the extensions that I use.  
`Github Copilot` - You can to use it for free through the Student Education Pack, which NUS is part of. Generally I find it really useful, especially in autocompleting tedious. Note that like any AI tool, it is prone to hallucination + giving buggy code so please use it with discretion  
`Prettier` - Auto format your code when you save. Check with your organization for the actual formatting requirements of the project that you are working on because the default configuration might not be in accordance to your guidelines. I find it to be a good tool to ensure consistency, and help me save time by doing the tedious tasks for me (like indentations and putting semicolons)  
`Error Lens` - Improve error highlights. I've used it for so long that I thought the error messages are in built into VSCode. Must have  
`IntelliCode` - Same thing. I've used it for so long that I thought it's inbuilt into VSCode. Must have  
`Vim` - I use Vim in VSCode for the other VSCode extensions.  
`Auto Rename Tag` - When you are editing tags, it automatically help you edit the closing tag as well. It solves one problem but it saves a lot of time

Now we are moving towards Project specific extensions  
`ES7 React Snippets` - For React. Honestly, the only snippet I use is rcfe which creates a functional boilerplate component for you  
`Bootstap / Tailwind Intellisense` - Suggestions on the existing classes for bootstrap/tailwind, if you use any of these libraries. Great so that you don't have to always look up documentation
