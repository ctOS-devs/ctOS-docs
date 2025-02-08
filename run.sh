nohup ./mdbook watch &

# Check updates
while true
do
git pull
sleep 300
done
