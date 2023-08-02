// * Firebase is a Serverless Apps!
// > No more worrying about
// > infrastructure needing
// > patching!
// > No more tedious customer site
// > firewalls
// > Everything you need in one portal!
//
// * Firebase offers Sign-in for all major providers Like
//
// Email & password
// Phone
// Google
// PlayGames
// Facebook
// Twitter
// Github
// etc
//
// * We’ll be making use of Cloud Firestore, a NoSQL database in the Cloud.
// * Firebase Storage allows us to host our cat images and access them easily and securely within our app.
//
// * Firebase Setup ( Creating a Free account )
//
// * Head over to https://console.firebase.google.com and create a new Project.
//
// * You will need to be logged in with a Google Account for this to work.
//
// * Once You Sign in with Google account Click on + Add Project
//
// * Then  Add your:
// ▻ Project Name
// ▻ Project ID (Generated Randomly)
// ▻ Country/Region (Important for Currency Reporting)
//
// * Firebase ios Setting
//
// > Click on iOS Circle
// > Give bundle id ( Where is your bundle id Located?)
// > go to the Project > android > app > build.gradle > go to applicationId Copy the applicationId and Provide it in the place of bundle ID
// > Download GoogleService-Info-Plist
// > For an iOS > Click on ios > Runner > Under Runner Pasted the GoogleServie-Info-Plist
// > again go to the Project
// > go to iOS > Runner > Open Info.plist and googleService-Info-Plist
// > Open Info.plist and Add the below lines
// > Before </dict></Plist> Pasted this Below Code
//
// <array>
// <dict>
// <key>CFBundleTypeRole</key>
// <string>Editor</string>
// <key>CFBundleURLSchemes</key>
// <array>
// <string>com.googleusercontent.apps.438568605081-uiu5r058iobt2o8g5vvvq035f6t4ve4n</string>
// <string>com.example.catbox</string>
// </array>
// </dict>
// </array>
//
// > go to GoogleServiceInfo.plist File Copy the Below two Lines of Code Pasted in the InfoPlist file Below two String field
//
// First One > Reversed Client id
// Second One > Bundle id
//
// > Then Click Next, Next and Next again
// > Setup for iOS Completed
//
// > Firebase Setup For android
//
// > Provide the Package Name (where it is Located ?)
// > go to the Project > android > app > build.grade > Copy the applicationId and pasted in the package Name
// > Where is the ( Debug signing certificate SHA-1 ) Located ? it is important =>  Best Solution( go to terminal Write cd android , then write , gradlew signinReport
// > go to android > app > build.gradle > click on Open for editing an android studio
// > Then Click on gradle , Then Provide this Click Enter and then Copy SH1 value and pasted in the Require Field in Firebase
// > Click Next
// > Click on Download google-services.json
// > go to android > app > Then Pasted the google-services.json file Here
// > Copy the Project>/build.gradle Line Classpath '   '
// > go to the top level build.gradle mean android >  then build.gradle
// > under the dependencies Pasted the Copied Line
// > Copy apply Plugin '  ' Line
//
// Then Copy The two dependencies and pasted under the dependencies in android > app > build.gradle
//
// > go to android > app > build.gradle > at the end of this page Pasted the Copied Line Here
// > Click on Next
// > Next And Then Skip Finish
//
// Now
//
// > go to pubspec.yaml File And Add the below dependencies
//
// > firebase_core
// > firebase_auth
// > google_sign_in
// > cloud_firestore
// >  firebase_storage
//
//
//
//
// How to Add firebase to a web
//
// Click on add firebase for web, then provide Nick Name to your Project, CLick Next.
//
// Copy this ( npm install firebase ) and go to your project terminal simply paste this . after this
//
// Write <script type="module">
//
// Copy all the code firebase provided and then pasted here.
//
// </script>
//
// go to your project , Web , index.html above script tag simply paste the copied code.
//
// For the setup of flutter firebase project you need core dependencies.
//
// go to main()
//
// write the two main lines of firebae code , await firebase.initializeApp (
//
// options: FrebaseOptions(
// apikey:
// addId:
// messagingSenderId:
// projectId:
// )
//
// Provides all the above fields from index.html file
//
// after that Save your app and Start debugging hope your fierbase is setup for web app.
//
//
// Firebae fir iOS
//
// go to iOS, Runner, project.pbxproj , scroll down then copy PRODUCT_BUNDLE_IDENTIFIER . and pasted in place of Apple bundle ID. Provide
// App nickName, App Store ID both of these field are optional. Click on Register App
//
// Download GoogleService-info.plist and then pasted inside Runner folder. Clink on Next , Next , Next , Continue to Console. That't it for iOS
// our iOS app is successfully link to our project.
//
//
//
//
//
// Firebase Login Setup
//
// install dependencies of flutter facebook
//
// then write a method or function for Facebook login
//
// then Enable authentication for facebook from Authentication
//
// from where can i get App ID and App secret. go to https://developers.facebook.com/ here click on login.
//
// Provide your facebook Id and password and then login. Click on Create App , Select type of application , Next. Provide Display Name and contact Email, Create App.
//
// our Application will be created after that. go to our project, go to settings, basic, inside basic u have your App ID and App Secret. also live your App Mode
//
// also you need to add Key Hashes, how to add key Hashes?
//
// go to Roles, Test users, create test users.
//
// go to androidManifest.xml,
//
// go to res, values, add strings.xml file
//
// That's it.
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
