stack: user.stack()

save: key(ctrl-s)

next: user.pour()

oops: edit.undo()

undo: edit.undo()

drop: user.comma()  

run: key(ctrl-enter)

purge: key(backspace)

push: key(right)

tug: key(left)

copy: key(ctrl-c)

inject: key(ctrl-v)

redo: key(ctrl-y)

cut: key(ctrl-x)

head: edit.sentence_start()

all: key(ctrl-a)

string <user.text>: user.process_string_command(user.text)

super: key(super)

sign: user.assign()

sequel <user.text>: user.capslock(user.text)

equiv: user.equiv()

search: key(ctrl-f)

pascal <user.text>: user.pascal_case(user.text)

stop: key(;)

command: key(alt-space)

arrow: user.arrow() 

drill: key(f12)

close tab: key(ctrl-w)

open tab: key(ctrl-t)

reopen tab: key(ctrl-shift-t)

nuke tab: key(ctrl-shift-w)

#under: key(_) 

move tab: key(ctrl-tab)


