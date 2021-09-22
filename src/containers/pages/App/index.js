import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import Navbar from "../Home/Navbar";
import Body from "../Home/body";
import Fitur from "../Home/Fitur";
import Tentang from "../Home/tentang";

function App() {
  return (
    <>
      <Navbar />
      <Body />
      <Fitur />
      <Tentang />
    </>
  );
}

export default App;
