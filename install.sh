echo 'Installing curl from apt..'
apt-get update                  # Update packages just in case
apt-get install curl            # Install curl just in case
echo 'Done!'
echo 'Moving to /bin/..'
sudo mv qpaste.sh /bin/qpaste   # Move qpaste.sh to binaries
echo 'Done!'
echo 'Make /bin/qpaste +x..'
sudo chmod +x /bin/qpaste       # flag it executable
echo 'Done! Run qpaste to see usage.'
