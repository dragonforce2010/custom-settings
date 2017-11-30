# SUBLIME KEYMAPS
Ctrl + h                                 : search in file (better install search in project plugin)
Cmd + shift + L                          : make all the selected area editable
Ctrl + shift + w                         : wrap text in a tag
select+cmd+shift+l+ctrl+shift+w          : select multiple lines and wrap each line in a tag 
Alt + column selection(three finger drag): column select
Cmd + ~                                  : open console
Ctrl + q                                 : start/stop recording micros/actions
alt + cmd + 2                            : split vertically 
Alt + cmd + 3
Alt + cmd + 4
Ctrl + alt + cmd + 2                     : split horizontally 
Ctrl + alt + cmd + 3
Ctrl + alt + cmd + 4
Alt + cmd + 5                            : grid lay out
Ctrl + alt + cmd + 5                     : grid lay out
Alt + cmd + 1                            : single layout
Ctrl + alt + cmd + 1                     : single layout
Ctrl + shift + left/right                : focus layout
Duble click file                         : open a tab
Ctrl + w                                 : wrap the text, used in conjunction with column selection


Cmd + p: to search files
- file name + “@” to search the function in the files in js
- '.' to search class in css file
- '#'' to search text in file and jump to the cursor
- ':'' to jump to specific line number

Cmd + shift  + f: reveal file in sidebar
Shift+ cmd   + c: color picker
Ctrl + shift + a: alignment the code
Ctrl + shift + f: reindent the code 
Ctrl + shift + q: add console log statements in the below line.
Ctrl + shift + k: Ember -- open corresponding template
Cmd  + shift + p: open command paltte
Alt+cmd+up/down : to increase/decrease the value of pixel in css
- sort lines
- Reverse
- lower/upper case
- Encode special characters
- set syntax SQL/…
- color picker


# Emmet Example: 
ul>li.item-$$*10>span
(header.site-head>h1+nav>ul>li*5>a)+(div.site-body>div.main+aside.sidebar)+(footer.site-footer>p)
## Note: never put space between operators
- +: represent siblings
- (): represent groups


# Plugins: 
Find in project:https://packagecontrol.io/packages/FindInProject
sidebarEnhancement: https://packagecontrol.io/packages/SideBarEnhancements
File browser: https://packagecontrol.io/packages/FileBrowser
Focus file on sidebar: https://packagecontrol.io/packages/Focus%20File%20on%20Sidebar
	- need to add one line configuration in setting:“close_sidebar_if_opened": false
Color highlighter
Color picker:https://packagecontrol.io/packages/ColorPicker
Gitgutter: https://packagecontrol.io/packages/GitGutter
AllAutocomplete: https://packagecontrol.io/packages/All%20Autocomplete
Markdown preview: https://packagecontrol.io/packages/Markdown%20Preview
Docblockr: https://packagecontrol.io/packages/DocBlockr
Bracket highlighter: https://packagecontrol.io/packages/BracketHighlighter
Alignment: https://packagecontrol.io/packages/Alignment
Autofilename: https://packagecontrol.io/packages/AutoFileName
Case Conversion:https://packagecontrol.io/packages/Case%20Conversion
Console wrap for js: https://packagecontrol.io/packages/Console%20Wrap
jQuery: https://packagecontrol.io/search/jquery
jqueryDoc:https://packagecontrol.io/packages/jQueryDocs
Local history: https://packagecontrol.io/packages/Local%20History
Random everything: https://packagecontrol.io/packages/Random%20Everything
Sftp:https://packagecontrol.io/packages/SFTP
Swap strings: https://packagecontrol.io/packages/SwapStrings
Ember Template Component Split View:https://packagecontrol.io/packages/Ember%20Template%20Component%20Split%20View
Ember CLI Snippets:https://packagecontrol.io/packages/Ember%20CLI%20Snippets
Tabs shortcuts: https://packagecontrol.io/packages/TabsShortcuts
setting sync

# Console
sublime.log_commands(True): this will log each command we executed in the console. This can help us to find command names.


# Start from Command line 
n -s /Applications/DevApps/SublimeText.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime