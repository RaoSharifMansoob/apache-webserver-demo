echo "Updating System..."
sudo apt update -y

echo "Installing Apache2..."
sudo apt install apache2 -y

echo "Starting Apache2..."
sudo systemctl start apache2
sudo systemctl enable apache2

echo "Creating Demo Page..."
sudo bash -c 'cat > /var/www/html/index.html <<EOF
<h1> Apache Demo Server </h1>
<p> Installed Using Bash Automation Script. </p>
EOF'

echo "Done. Open http://localhost in your browser"
