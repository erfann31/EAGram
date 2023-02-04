# EAGram
Flutter application that implements socket.io in <a href="https://nodejs.org">Node.js</a>
Works in - Android, iOS and Web
## Preview
![alt text](https://imgur.com/a/lY9FyKr "Example GIF")<br/>
## Server preview<br/>
![bandicam 2023-02-04 03-28-13-967](https://user-images.githubusercontent.com/75057732/216733077-86d7c750-7a9e-4ffd-8e45-8059b5b1b587.jpg)<br/>

## Clone project


```
git clone https://github.com/erfann31/EAGram.git
```

goto `lib/utils/constants.dart` and update server url

## Run this project

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
flutter run
```

Then goto `build` folder and copy `web` directory into the root folder of your Node.js Backend project

## Run Server

Go to project Server root and execute the following command in console to get the required dependencies and run the project: 

```
npm install
npm start
```

now open your browser and type `<you host ip>:<port>` to run front end Flutter Web project
