
#!/bin/bash

COURSE="Devops from current script"

echo "Before calling script,course: $COURSE"
echo "Process ID of current script,course: $$"

./16-other-script.sh

echo "After calling other script, course: $COURSE" 