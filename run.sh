nohup ./mdbook watch &

# Run http server
back=$(pwd)
cd book
nohup python -m http.server 8555 &
cd $back

# Check updates
while true
do
git pull
sleep 300
done
