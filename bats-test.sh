@test "The shell script file 'checkApp' exists" {
  [ -f "checkApp" ]
}

@test "The shell script file 'pss' exists" {
  [ -f "pss" ]
}

@test "The shell script file 'checkApp' is executable" {
  [ -x "checkApp" ]
}

@test "The shell script file 'pss' is executable" {
  [ -x "pss" ]
}

ANSWER_REGEX="^[[:digit:]]+$"

@test "p1 is number" {
  run ./myscript.sh
  [[ "${lines[0]}" =~ $ANSWER_REGEX ]]
}

@test "p2 is number" {
  run ./myscript.sh
  [[ "${lines[1]}" =~ $ANSWER_REGEX ]]
}

@test "if condition output is correct" { 
  run ./myscript.sh 
  [ "${lines[2]}"  = "./startApp" -o  "${lines[2]}"  = "./stopApp" ] 
}
