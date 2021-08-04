import React from "react";
import img1 from "../assets/images/prototype1.png";
import img2 from "../assets/images/prototype2.png";
import img3 from "../assets/images/prototype3.png";

const Fitur = () => {
  return (
    <section className="fitur">
      <div className="container">
        <h3 className="text-uppercase text-center judul">fitur</h3>
        <div className="row">
          <div className="col">
            <div className="container prev-app shadow d-flex justify-content-center">
              <div id="carouselExampleControls" className="carousel carousel-dark slide gambar-slide" data-bs-ride="carousel">
                <div className="carousel-inner">
                  <div className="carousel-item active">
                    <img src={img1} className="d-block w-100 img1" alt="..." />
                  </div>
                  <div className="carousel-item">
                    <img src={img2} className="d-block w-100 img2" alt="..." />
                  </div>
                  <div className="carousel-item">
                    <img src={img3} className="d-block w-100 img3" alt="..." />
                  </div>
                </div>
                <button className="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                  <span className="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span className="visually-hidden">Previous</span>
                </button>
                <button className="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                  <span className="carousel-control-next-icon" aria-hidden="true"></span>
                  <span className="visually-hidden">Next</span>
                </button>
              </div>
            </div>
          </div>
          <div className="col">
            <div className="container">
              <h1 className="text-uppercase">Seroom.id</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Fitur;
