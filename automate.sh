
#Define all paths, constants here
PROJECT_DIR='/Users/mayuri/CODE/AndroidBuildAutomationSample/'
OUTPUT_DIR='/Users/mayuri/CODE/AndroidBuildAutomationSample/OUTPUT_DIR/'

# Functions for customizing colors(Optional)
print_red(){
    printf "\e[1;31m$1\e[0m"
}
print_green(){
    printf "\e[1;32m$1\e[0m"
}
print_yellow(){
    printf "\e[1;33m$1\e[0m"
}
print_blue(){
    printf "\e[1;34m$1\e[0m"
}

#Enter project dir
cd $PROJECT_DIR

#Start Build Process
print_blue "\n\n\nStarting"
print_blue "\n\n\nCleaning...\n"
./gradlew clean

print_blue "\n\n\ncleanBuildCache...\n"
./gradlew cleanBuildCache

print_blue "\n\n\n build...\n"
./gradlew build

print_blue "\n\n\n assembleDebug...\n"
./gradlew assembleDebug

#Install APK on device / emulator
print_blue "installDebug...\n"
./gradlew installDebug

print_blue "\n\n\n Done Installing\n"

#Launch Main Activity
adb shell am start -n "com.sample.androidbuildautomationsample/com.sample.androidbuildautomationsample.MainActivity" -a android.intent.action.MAIN -c android.intent.category.LAUNCHER

print_blue "\n\n\n Launched main activity\n"

#Copy APK to output folder
cp "$PROJECT_DIR"app/build/outputs/apk/debug/app-debug.apk $OUTPUT_DIR
print_blue "\n\n\n Copying APK to outputs Done\n"

