#! /bin/zsh

message='This is my message'


echo Message: $message
echo
echo Redirection to \"/dev/null\"
echo "Null Message: $message" >/dev/null
echo
echo "Redirection to \"\&2\" (i.e. STDERR)" >&2
echo "Error Message: $message" >&2
echo 
echo "Redirection to \"\&1\" (i.e. STDOUT, also the default)"
echo "Error Message: $message"
