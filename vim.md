# Setup
```sh
sudo apt-get install vim
vim test.txt
```

# Commands and modes

## Modes
```
:help [keyword] - Performs a search of help documentation for whatever keyword you enter
:e [file] - Opens a file, where [file] is the name of the file you want opened
:w - Saves the file you are working on
:w [filename] - Allows you to save your file with the name you've defined
:wq - Save your file and close Vim
:q! - Quit without first saving the file you were working on
```

## Cursor movement commands
```
h - Moves the cursor to the left
l - Moves the cursor to the right
j - Moves the cursor down one line
k - Moves the cursor up one line
w - Puts the cursor at the start of the next word
b - Puts the cursor at the start of the previous word
e - Puts the cursor at the end of a word
0 - Places the cursor at the beginning of a line
$ - Places the cursor at the end of a line

) - Takes you to the start of the next sentence
( - Takes you to the start of the previous sentence
} - Takes you to the start of the next paragraph or block of text
{ - Takes you to the start of the previous paragraph or block of text

Ctrl + f - Takes you one page forward
Ctrl + b - Takes you one page back
gg - Places the cursor at the start of the file
G - Places the cursor at the end of the file
# - Where # is the number of a line, this command takes you to the line specified
```

## Editing commands
```
i  # enter insert mode
ESC  # exit any mode
y  # copy selection
v - Highlight one character at a time using arrow buttons or the h, k, j, l buttons
p - Paste whatever has been copied to the unnamed register
d - Deletes highlighted text
dd - Deletes a line of text
dw - Deletes a word
D - Deletes everything from where your cursor is to the end of the line
d0 - Deletes everything from where your cursor is to the beginning of the line
dgg - Deletes everything from where your cursor is to the beginning of the file
dG - Deletes everything from where your cursor is to the end of the file
x - Deletes a single character
u - Undo the last operation; u# allows you to undo multiple actions
Ctrl + r - Redo the last undo
. - Repeats the last action

> - shift text right
< - shift text left
```

## Vim commands for searching text
```
/[keyword] - Searches for text in the document where keyword is whatever keyword, phrase or string of characters you're looking for
?[keyword] - Searches previous text for your keyword, phrase or character string
n - Searches your text again in whatever direction your last search was
N - Searches your text again in the opposite direction
:%s/[pattern]/[replacement]/g - This replaces all occurrences of a pattern without confirming each one
:%s/[pattern]/[replacement]/gc - Replaces all occurrences of a pattern and confirms each one
```

# Helpful links
https://www.keycdn.com/blog/vim-commands
