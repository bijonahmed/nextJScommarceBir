// app/components/ClientNavbar.js
"use client"; // Must be top

import Link from "next/link";
import { useState, useEffect } from "react";
//import "../../components/styles/footer.css";
export default function ClientFooter() {
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
    
    <footer className="ps-footer">
      <style jsx>{`
  /* Mobile view: center footer widgets and social icons */
  @media (max-width: 768px) {
    .ps-footer__widgets {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    .ps-footer__widgets .widget {
      width: 100%; /* take full width for mobile */
      margin-bottom: 20px;
    }

    .ps-footer__widgets .widget h3,
    .ps-footer__widgets .widget h4,
    .ps-footer__widgets .widget p,
    .ps-footer__widgets .widget ul,
    .ps-footer__widgets .widget li {
      text-align: center; /* center all text and lists */
    }

    .ps-footer__widgets .ps-list--social {
      display: flex; /* make flex container */
      justify-content: center; /* center horizontally */
      padding-left: 0; /* remove default ul padding */
      list-style: none; /* remove bullets */
    }

    .ps-footer__widgets .ps-list--social li {
      margin: 0 5px; /* spacing between icons */
    }
  }
`}</style>
      <div className="container">
        <div className="ps-footer__widgets">
          <aside className="widget widget_footer widget_contact-us">
            <h4 className="widget-title">Contact us</h4>
            <div className="widget_content">
              <p>Call us 24/7</p>
              <h3>01329683606</h3>
              <p>
                6th & 7th Floor, Navana Osman @link, 214/d Bir Uttam Mir Shawkat
                Sarak, Dhaka 1208 <br />
                <a href="mailto:contact@martfury.co">
                  birgh.group.digital@gmail.com
                </a>
              </p>
              <ul className="ps-list--social">
                <li>
                  <a className="facebook" href="#">
                    <i className="fa-brands fa-facebook" />
                  </a>
                </li>
              </ul>
            </div>
          </aside>
          <aside className="widget widget_footer">
            <h4 className="widget-title">Quick links</h4>
            <ul className="ps-list--link">
              <li>
                <Link href="/policy">Policy</Link>
              </li>
              <li>
                <Link href="/terms">Term &amp; Condition</Link>
              </li>
              <li>
                <Link href="/return">Return and cancellation policy</Link>
              </li>
              <li>
                <Link href="/shop">Shipping</Link>
              </li>
            </ul>
          </aside>
          <aside className="widget widget_footer">
            <h4 className="widget-title">Company</h4>
            <ul className="ps-list--link">
              <li>
                <Link href="/about-us">About Us</Link>
              </li>
              <li>
                <Link href="/faq">FAQs</Link>
              </li>
              <li>
                <Link href="/contact">Contact</Link>
              </li>
              <li>
                <Link href="/login">Admistrator</Link>
              </li>
            </ul>
          </aside>
          <aside className="widget widget_footer">
            <h4 className="widget-title">Bussiness</h4>
            <ul className="ps-list--link">
              <li>
                <Link href="/about-us">Our Press</Link>
              </li>
              <li>
                <Link href="/cart">Cart</Link>
              </li>
              <li>
                <Link href="/checkout">Checkout</Link>
              </li>
              <li>
                <Link href="/customer-dashboard">My account</Link>
              </li>
              <li>
                <Link href="/shop">Shop</Link>
              </li>
            </ul>
          </aside>
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
            top: "750px", // <-- fixed distance from top
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

        <div className="ps-footer__copyright d-flex justify-content-center">
          <p>
            © {new Date().getFullYear()} Bir E-Commerce. All Rights Reserved
          </p>
        </div>
      </div>
    </footer>
  );
}
