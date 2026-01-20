"use client";

import Image from "next/image";
import { useState, useEffect } from "react";
import Slider from "../components/frontend/Slider";
import NewsLetter from "../components/frontend/NewsLetter";
import PromotionProducts from "../components/frontend/PromotionProducts";
import ProductsSliders from "../components/frontend/ProductsSliders";
import ProductCategories from "../components/frontend/ProductCategories";

export default function Home() {
  const [showScroll, setShowScroll] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      setShowScroll(window.scrollY > 300);
    };

    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, []);

  const scrollToTop = () => {
    window.scrollTo({
      top: 0,
      behavior: "smooth",
    });
  };

  return (
    <>
      <div id="homepage-3" className="bg-white">
        <div className="ps-home-banner">
          <Slider />
        </div>

        <PromotionProducts />

        <div className="ps-section--gray">
          <div className="container">
            <ProductCategories />
          </div>
        </div>

        <div className="ps-site-features d-none d-sm-block">
          <div className="container">
            <div className="ps-block--site-features ps-block--site-features-2">
              <div className="ps-block__item">
                <div className="ps-block__left">
                  <i className="icon-rocket" />
                </div>
                <div className="ps-block__right">
                  <h4>Fast Shipping</h4>
                  <p>Fast delivery</p>
                </div>
              </div>

              <div className="ps-block__item">
                <div className="ps-block__left">
                  <i className="icon-sync" />
                </div>
                <div className="ps-block__right">
                  <h4>30-Day Returns</h4>
                  <p>Easy returns</p>
                </div>
              </div>

              <div className="ps-block__item">
                <div className="ps-block__left">
                  <i className="icon-credit-card" />
                </div>
                <div className="ps-block__right">
                  <h4>Safe Payment</h4>
                  <p>Secure payment</p>
                </div>
              </div>

              <div className="ps-block__item">
                <div className="ps-block__left">
                  <i className="icon-bubbles" />
                </div>
                <div className="ps-block__right">
                  <h4>Customer Support</h4>
                  <p>We’re here 24/7 to help you</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Scroll To Top Button */}
        {showScroll && (
          <button
            onClick={scrollToTop}
            style={{
              position: "fixed",
              bottom: "30px",
              right: "30px",
              zIndex: 999,
              width: "45px",
              height: "45px",
              borderRadius: "50%",
              border: "none",
              background: "#eccc12",
              color: "#fff",
              cursor: "pointer",
            }}
            aria-label="Scroll to top"
          >
            ↑
          </button>
        )}

        {/* WhatsApp fixed button */}
        <a
          href="https://wa.me/8801915728982"
          target="_blank"
          rel="noopener noreferrer"
          style={{
            position: "fixed",
            top: "600px", // <-- fixed distance from top
            right: "20px", // distance from right edge
            backgroundColor: "#25D366",
            color: "#fff",
            borderRadius: "50%",
            width: "60px",
            height: "60px",
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            zIndex: 9999,
            boxShadow: "0 4px 6px rgba(0,0,0,0.3)",
            textDecoration: "none",
          }}
        >
          <i className="fa-brands fa-whatsapp" style={{ fontSize: "28px" }}></i>
        </a>
      </div>
    </>
  );
}
