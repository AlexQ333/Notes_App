echo "Welcome to **TERMINAL NOTES**"

echo "Lets begin the install now"

cd ..

cd ..

git clone "https://github.com/AlexQ6/Notes_app.git"

cd Notes_app/src


echo "All required gems are being installed right now"
gem install bundler

bundle install

echo "All gems have been installed, running application for the first time now"

ruby main.rb
