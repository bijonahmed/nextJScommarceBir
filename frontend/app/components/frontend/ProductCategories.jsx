"use client";

import React, { useState } from "react";
import useCategories from "../../hooks/useProductsCategories";
import { useRouter, usePathname } from "next/navigation";
import "../styles/loader.css";
import Link from "next/link";
export default function ProductCategories() {
  const { categoryData, loading } = useCategories();
  const [loaded, setLoaded] = useState(false);
  const router = useRouter();
  // Store products per category
  const [categoryProducts, setCategoryProducts] = useState({});
  const [responseInSubcategory, setInSubcategory] = useState({});
  const [categoryLoading, setCategoryLoading] = useState({});
  const [subCatImage, setSubCatImage] = useState("");
  const [selectedChildId, setSelectedChildId] = useState(null);
  const [responseSubCatName, setCateName] = useState(null);
  const [showModal, setShowModal] = useState(false);

  const openModal = () => {
    const modalEl = document.getElementById("categoryModal");
    if (modalEl) {
      modalEl.classList.add("show", "d-block");
      modalEl.style.backgroundColor = "rgba(0,0,0,0.5)";
    }
  };

  const closeModal = () => {
    const modalEl = document.getElementById("categoryModal");
    if (modalEl) {
      modalEl.classList.remove("show", "d-block");
      modalEl.style.backgroundColor = "transparent";
    }
  };
  const handleCardClick = (slug) => {
    console.log("Slug: " + slug);

    router.push(`/shop-product-categories/${slug}`);
  };
  const fetchProducts = async (parentId, slug, childId, bannerImage) => {
    try {
      setShowModal(true);

      setCategoryLoading((prev) => ({ ...prev, [parentId]: true }));

      const url = `${process.env.NEXT_PUBLIC_API_BASE}/public/categoryFilter?slug=${slug}`;
      const res = await fetch(url);
      const result = await res.json();

      openModal();

      if (result.success && Array.isArray(result.product)) {
        // Update products per parent
        setCategoryProducts((prev) => ({
          ...prev,
          [parentId]: result.product,
        }));

        setInSubcategory(result.checkinSubCategories);
        setCateName(result.subCateName);
        // Update subcategory image **per parent**
        setSubCatImage((prev) => ({
          ...prev,
          [parentId]: {
            childId: result.childId,
            image: result.subcategoryImage || bannerImage || "",
          },
        }));

        // Track selected child id **per parent**
        setSelectedChildId((prev) => ({
          ...prev,
          [parentId]: result.childId,
        }));

        console.log(
          "Fetched childId:",
          result.childId,
          "for parentId:",
          parentId,
        );
      } else {
        setCategoryProducts((prev) => ({
          ...prev,
          [parentId]: [],
        }));
      }
    } catch (err) {
      console.error("Error fetching products:", err);
      setCategoryProducts((prev) => ({
        ...prev,
        [parentId]: [],
      }));
    } finally {
      setCategoryLoading((prev) => ({
        ...prev,
        [parentId]: false,
      }));
    }
  };

  if (loading) return <p>Loading...</p>;

  return (
    <>
      {/* <pre>{JSON.stringify(categoryData, null, 2)}</pre> */}
      {categoryData.map((parent) => {
        const products = categoryProducts[parent.id] || parent.products;
        const isLoading = categoryLoading[parent.id];

        return (
          <div
            key={parent.id}
            className="ps-block--products-of-category mb-10 relative"
          >
            {isLoading && (
              <div className="fullscreen-loader-overlay">
                <div className="spinner-border" role="status">
                  <span className="visually-hidden">Loading...</span>
                </div>
                <p className="loader-text">Loading... Please wait</p>
              </div>
            )}
            {/* Category header */}
            <div className="ps-block__categories">
              <h3>
                <Link href={`/product-categories/${parent.slug}`}>
                  {parent.name}
                </Link>
              </h3>
              <ul style={{ marginBottom: "50px" }}>
                {parent.children && parent.children.length > 0 ? (
                  parent.children.map((child) => (
                    <li
                      key={`${parent.id}-${child.id}`}
                      style={{
                        borderBottom: "1px solid #ccc",
                        padding: "5px 0",
                      }}
                    >
                      <span
                        style={{ cursor: "pointer" }}
                        onClick={() => fetchProducts(parent.id, child.slug)}
                      >
                        {child.name}
                      </span>

                      {child.children && child.children.length > 0 && (
                        <ul style={{ paddingLeft: "15px" }}>
                          {child.children.map((grandchild) => (
                            <li
                              key={`${child.id}-${grandchild.id}`}
                              style={{
                                borderBottom: "1px solid #eee",
                                padding: "3px 0",
                              }}
                            >
                              <span
                                style={{ cursor: "pointer" }}
                                onClick={() =>
                                  fetchProducts(child.id, grandchild.slug)
                                }
                              >
                                {grandchild.name}
                              </span>
                            </li>
                          ))}
                        </ul>
                      )}
                    </li>
                  ))
                ) : (
                  <li
                    key={`no-subcategories-${parent.id}`}
                    className="text-gray-400"
                  >
                    No subcategories
                  </li>
                )}
              </ul>

              <Link
                href={`/product-categories/${parent.slug}`}
                style={{
                  display: "inline-block",
                  marginTop: "20px",
                  padding: "10px 20px",
                  borderRadius: "25px",
                  background: "linear-gradient(135deg, #facc15, #f59e0b)",
                  color: "#1f2937",
                  fontWeight: "700",
                  fontSize: "14px",
                  textDecoration: "none",
                  boxShadow: "0 8px 20px rgba(245,158,11,0.4)",
                  transition: "all 0.3s ease",
                }}
                onMouseEnter={(e) => {
                  e.currentTarget.style.transform = "translateY(-2px)";
                  e.currentTarget.style.boxShadow =
                    "0 12px 25px rgba(245,158,11,0.55)";
                }}
                onMouseLeave={(e) => {
                  e.currentTarget.style.transform = "translateY(0)";
                  e.currentTarget.style.boxShadow =
                    "0 8px 20px rgba(245,158,11,0.4)";
                }}
              >
                View All →
              </Link>
            </div>
            {/* Category Banner */}
            <div className="ps-block__slider">
              {subCatImage ? (
                // subcategory image exists
                <img
                  loading="lazy"
                  src={
                    subCatImage[parent.id] &&
                    selectedChildId[parent.id] ===
                      subCatImage[parent.id]?.childId
                      ? subCatImage[parent.id].image || parent.banner_image
                      : parent.banner_image ||
                        "/frontend_theme/img/slider/home-3/blank_category.png"
                  }
                  alt={
                    subCatImage[parent.id] &&
                    selectedChildId[parent.id] ===
                      subCatImage[parent.id]?.childId
                      ? "Subcategory Banner"
                      : parent.name
                  }
                />
              ) : (
                // no subcategory image at all
                <img
                  loading="lazy"
                  src={
                    parent.banner_image ||
                    "/frontend_theme/img/slider/home-3/blank_category.png"
                  }
                  alt={parent.name}
                />
              )}
            </div>
            {/* Products */}
            {products && products.length > 0 && (
              <div className="ps-block__product-box">
                {products.map((product) => (
                  <div
                    key={`${parent.id}-${product.id}`} // ✅ fixed key
                    className="ps-product ps-product--simple"
                  >
                    <div
                      className={`image-wrapper ps-product__thumbnail ${
                        loaded ? "loaded" : ""
                      }`}
                    >
                      <Link href={`/product-details/${product.slug}`}>
                        <img
                          loading="lazy"
                          src={
                            product.thumbnail
                              ? product.thumbnail
                              : "/frontend_theme/img/products/clothing/1.jpg"
                          }
                          onLoad={() => setLoaded(true)}
                          alt={product.name}
                        />
                      </Link>
                    </div>

                    <div className="ps-product__container">
                      <div className="ps-product__content">
                        <p className="ps-product__title">{product.name}</p>
                        <p className="ps-product__price sale">
                          Tk.{product.discount_price ?? "0"}{" "}
                          <del>Tk.{product.price ?? "0"}</del>
                        </p>
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            )}

            {/* Bootstrap Modal */}
            {/* Button to open modal */}

            {/* Modal */}
            <div
              className="modal fade"
              id="categoryModal"
              tabIndex="-1"
              aria-labelledby="categoryModalLabel"
              aria-hidden="true"
              onClick={closeModal}
            >
              <div className="modal-dialog modal-xl modal-dialog-centered">
                <div
                  className="modal-content"
                  style={{
                    backgroundColor: "rgba(255, 255, 180, 0.25)", // yellowish
                    borderRadius: "1.5rem",
                    border: "3px solid #fcb800",
                    overflow: "hidden",
                    boxShadow: "0 0 30px rgba(236, 221, 9, 0.44)",
                  }}
                >
                  {/* Header */}
                  <div
                    className="modal-header border-0"
                    style={{
                      backgroundColor: "transparent",
                      padding: "1rem 2rem",
                    }}
                  >
                    <h3
                      className="modal-title fw-bold"
                      id="categoryModalLabel"
                      style={{ color: "#000000" }}
                    >
                      {responseSubCatName}
                    </h3>
                    <button
                      type="button"
                      className="btn-close"
                      data-bs-dismiss="modal"
                      aria-label="Close"
                    ></button>
                  </div>

                  {/* Body */}
                  <div className="modal-body">
                    <div className="row justify-content-center g-3">
                      {responseInSubcategory.length > 0 ? (
                        responseInSubcategory.map((item) => (
                          <div
                            key={item.id}
                            className="col-6 col-sm-6 col-md-4 col-lg-3 d-flex justify-content-center"
                            style={{ marginBottom: "16px" }} // gap between rows
                          >
                            <div
                              className="card shadow"
                              style={{
                                width: "300px",
                                height: "300px",
                                cursor: "pointer",
                                overflow: "hidden",
                                borderRadius: "0.75rem",
                                border: "2px solid #ffd90066", // subtle yellow border
                                backgroundColor: "transparent",
                                transition:
                                  "transform 0.3s ease, box-shadow 0.3s ease",
                              }}
                              onClick={() => handleCardClick(item.slug)}
                              onMouseEnter={(e) =>
                                (e.currentTarget.style.transform =
                                  "scale(1.05)")
                              }
                              onMouseLeave={(e) =>
                                (e.currentTarget.style.transform = "scale(1)")
                              }
                            >
                              <img
                                src={item.thumbnail}
                                alt={item.name}
                                style={{
                                  width: "100%",
                                  height: "90%", // give some space for name below
                                  objectFit: "cover",
                                  transition: "transform 0.3s ease",
                                }}
                              />
                              <div
                                className="card-body d-flex align-items-center justify-content-center"
                                style={{
                                  backgroundColor: "rgba(255, 255, 0, 0.05)", // faint yellowish background
                                }}
                              >
                                <p
                                  className="mb-0 fw-bold text-center"
                                  style={{
                                    fontSize: "14px",
                                    color: "#000",
                                  }}
                                >
                                  {item.name}
                                </p>
                              </div>
                            </div>
                          </div>
                        ))
                      ) : (
                        <div className="col-12 text-center text-muted">
                          No items available
                        </div>
                      )}
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        );
      })}
    </>
  );
}
