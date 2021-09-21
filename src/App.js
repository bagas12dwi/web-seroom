import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import Navbar from "./Components/Navbar";
import Body from "./Components/body";
import Fitur from "./Components/Fitur";
import Tentang from "./Components/tentang";

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
