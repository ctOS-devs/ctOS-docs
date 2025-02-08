main_pid=$(ps a | grep run.sh | grep -v grep | awk -F ' ' '{print $1}')
mdbook_pid=$(ps a | grep mdbook | grep -v grep | awk -F ' ' '{print $1}')
http_pid=$(ps a | grep 8555 | grep -v grep | awk -F ' ' '{print $1}')

kill -9 $main_pid
kill -9 $mdbook_pid
kill -9 $http_pid
