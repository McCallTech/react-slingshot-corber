#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update
#sudo apt-get install java-common oracle-java8-installer
#sudo apt-get install oracle-java8-set-default
#source /etc/profile
#
#export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
#export PATH=$JAVA_HOME/bin:$PATH

#sudo add-apt-repository ppa:cwchien/gradle
#sudo apt-get update
#sudo apt-get install gradle
#sudo add-apt-repository ppa:maarten-fonville/android-studio
#sudo apt-get update
#sudo apt-get install android-studio


export ANDROID_HOME="/home/crou/Android/Sdk/"
export PATH="${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/:${PATH}";
#~/Android/Sdk/tools/bin/sdkmanager "platform-tools" "platforms;android-19" "build-tools;19.1.0" "system-images;android-19;google_apis;x86"

. ~/.nvm/nvm.sh; nvm use --lts;
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
#corber platform remove android
#corber platform add android
#yarn install
#corber init
#corber proxy requirements
#corber serve --platform=android
corber build --platform=android
sed -i 's%href="/%href="%g' ./corber/cordova/www/index.html
sed -i 's%src="/%src="%g' ./corber/cordova/www/index.html
corber b --sfb --platform=android
http-server ./corber/cordova/platforms/android/app/build/outputs/apk/debug/
