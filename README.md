# AndroidBuildAutomation
Build and run Android APK's using an automated script.

As an Android Developer, most of my time is spent, in below manual tasks everyday.

Coding -> Gradle Sync (sometimes) ->(Re) Building app ->Running on device -> Testing the developed code on physical device / emulator. -> Run Test cases -> And finally ship apk for testing.
On an average this entire process takes at-least 3 user driven clicks, and an average of 1–2 mins, for performing actions manually. Add the build time ( 3–10 mins on average), depending on you app and hardware. Then you run it on device, to quickly test your code.

Goal : Write a script to automate all above actions.
Impact : Even if we deploy our debug builds on device say twice every hour, and we code 8 hours a day.

You can find the script automate.sh in the main project folder. (https://github.com/mayurik18/AndroidBuildAutomation/blob/master/automate.sh)

Detailed article explaing the automation process can be found here (https://medium.com/@mayuri.k18/how-to-quickly-build-and-run-android-apks-using-an-automated-script-eb0e4a997d68)
