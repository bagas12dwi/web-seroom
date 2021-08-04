import React from "react";
import logo from "../assets/images/logo.png";
import Body from "./body";

const Navbar = () => {
  return (
    <nav className="navbar shadow fixed-top navbar-expand-lg navbar-light bg-light">
      <div className="container">
        <a className="navbar-brand" href="#">
          <img src={logo} className="logo"></img>
        </a>
        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse" id="navbarSupportedContent">
          <ul className="navbar-nav ms-auto mb-2 mb-lg-0">
            <li className="nav-item">
              <a className="nav-link" aria-current="page" href="#home">
                Home
              </a>
            </li>
            <li className="nav-item">
              <a className="nav-link" href="#">
                Fitur
              </a>
            </li>
            <li className="nav-item">
              <a className="nav-link" href="#">
                Tentang
              </a>
            </li>
            <a className="btn btn-primary ms-1 mb-2 px-5 rounded-pill btn-nav fw-bold" href="#">
              GET APP
            </a>
          </ul>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
