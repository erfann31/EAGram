# EAGram
Flutter application that implements socket.io in <a href="https://nodejs.org">Node.js</a>
Works in - Android, iOS and Web
## Preview
![preview](https://github.com/erfann31/EAGram/preview.mp4)

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
