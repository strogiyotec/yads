#Add new task whose dead line is the end of the day
function newTask(){
 task rc:~/.config/taskwarrior/.taskrc add $1 due:22:00:00
}
