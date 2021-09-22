// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyCrxn64ACBWTbx2VGgGyQL3BiAqFJzqkNQ",
  authDomain: "seroom-8e89f.firebaseapp.com",
  projectId: "seroom-8e89f",
  storageBucket: "seroom-8e89f.appspot.com",
  messagingSenderId: "941374023630",
  appId: "1:941374023630:web:464e3e8304162191456d9f",
  measurementId: "G-2PTEL77SLQ",
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);

export default app;
