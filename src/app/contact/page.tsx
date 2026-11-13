"use client";

import React, { useState, useEffect, Suspense } from "react";
import Link from "next/link";
import { useSearchParams } from "next/navigation";
import { Header } from "@/components/common/Header";
import { Footer } from "@/components/common/Footer";
import { createClient } from "@/lib/supabase/client";
import "@/styles/contact.css";

function ContactContent() {
  const searchParams = useSearchParams();
  const [activeTab, setActiveTab] = useState<"general" | "trade">("general");
  const [inquiryProduct, setInquiryProduct] = useState("");
  const [subjectVal, setSubjectVal] = useState("product_inquiry");
  const [submitted, setSubmitted] = useState(false);
  const [customerName, setCustomerName] = useState("");
  const [currentUser, setCurrentUser] = useState<{ email?: string; firstName?: string; lastName?: string } | null>(null);

  useEffect(() => {
    const supabase = createClient();
    supabase.auth.getSession().then(({ data: { session } }) => {
      if (session?.user) {
        const fullName =
          session.user.user_metadata?.full_name ||
          session.user.user_metadata?.name ||
          session.user.email?.split("@")[0] ||
          "";
        const parts = fullName.split(" ");
        setCurrentUser({
          email: session.user.email,
          firstName: parts[0] || "",
          lastName: parts.slice(1).join(" ") || "",
        });
      }
    });
  }, []);

  useEffect(() => {
    if (searchParams) {
      const prod = searchParams.get("product") || searchParams.get("item") || "";
      const subj = searchParams.get("subject") || "";
      if (prod) {
        setInquiryProduct(prod);
      }
      if (subj.toLowerCase().includes("wholesale") || subj.toLowerCase().includes("trade")) {
        setActiveTab("trade");
      }
    }
  }, [searchParams]);

  const handleGeneralSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const formData = new FormData(e.currentTarget);
    const firstName = (formData.get("firstName") as string) || "";
    const lastName = (formData.get("lastName") as string) || "";
    const name = `${firstName} ${lastName}`.trim() || "Friend";
    const email = (formData.get("email") as string) || "";
    const phone = (formData.get("phone") as string) || "";
    const message = (formData.get("message") as string) || "";
    const subject = (formData.get("subject") as string) || "product_inquiry";

    setCustomerName(name);
    setSubmitted(true);

    try {
      await fetch("/api/inquiry", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          customerName: name,
          contactEmail: email,
          contactPhone: phone,
          companyName: name,
          notes: `[Subject: ${subject}]\nMessage: ${message}${inquiryProduct ? `\nInquiring piece: ${inquiryProduct}` : ""}`,
          items: inquiryProduct ? [{ code: inquiryProduct, name: inquiryProduct, quantity: 1 }] : [],
          type: "general_contact",
        }),
      });
    } catch (err) {
      console.warn("Contact submission error:", err);
    }
  };

  const handleTradeSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const formData = new FormData(e.currentTarget);
    const firstName = (formData.get("firstName") as string) || "";
    const lastName = (formData.get("lastName") as string) || "";
    const name = `${firstName} ${lastName}`.trim() || "Trade Partner";
    const businessName = (formData.get("businessName") as string) || name;
    const email = (formData.get("email") as string) || "";
    const phone = (formData.get("phone") as string) || "";
    const businessType = (formData.get("businessType") as string) || "";
    const taxId = (formData.get("taxId") as string) || "";
    const tradeMessage = (formData.get("tradeMessage") as string) || "";

    setCustomerName(name);
    setSubmitted(true);

    try {
      await fetch("/api/inquiry", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          customerName: name,
          contactEmail: email,
          contactPhone: phone,
          companyName: businessName,
          taxVatNumber: taxId,
          notes: `[Business Type: ${businessType}]\nTrade Message: ${tradeMessage}`,
          type: "trade_application",
        }),
      });

      window.dispatchEvent(new Event("fhd_quotes_updated"));
      window.dispatchEvent(new Event("fhd_buyers_updated"));
    } catch (err) {
      console.warn("Trade submission error:", err);
    }
  };

  return (
    <>
      <Header activePage="contact" />

      {/* Page Hero */}
      <section className="page-hero">
        <span className="eyebrow">Get In Touch</span>
        <h1>
          Contact <em>Us</em>
        </h1>
        <p>
          Have questions about container load orders, custom furniture specifications, or general inquiries? Send us your
          query below.
        </p>
      </section>

      {/* Contact Section */}
      <section className="contact-section">
        {/* Info Column */}
        <div className="info-col">
          <h2>We&apos;re Here to Help</h2>
          <p>
            Whether you&apos;re inquiring about container load shipments (HC40), bespoke finishes, or catalogue designs, our
            team is ready to assist your business.
          </p>

          {/* Address */}
          <div className="info-item">
            <div className="info-icon" aria-hidden="true">
              <svg
                width="20"
                height="20"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z" />
                <circle cx="12" cy="10" r="3" />
              </svg>
            </div>
            <div className="info-text">
              <h4>Showroom &amp; Office</h4>
              <p>
                1 Auer Ct, Second Floor
                <br />
                East Brunswick, NJ 08816
                <br />
                United States
              </p>
            </div>
          </div>

          {/* Phone */}
          <div className="info-item">
            <div className="info-icon" aria-hidden="true">
              <svg
                width="20"
                height="20"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07A19.5 19.5 0 0 1 4.69 13.5a19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 3.6 2.69h3.12a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L7.91 10.4a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z" />
              </svg>
            </div>
            <div className="info-text">
              <h4>Phone</h4>
              <p>
                <a href="tel:+17857131584">+1 785-713-1584</a>
              </p>
            </div>
          </div>

          {/* Email */}
          <div className="info-item">
            <div className="info-icon" aria-hidden="true">
              <svg
                width="20"
                height="20"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z" />
                <polyline points="22,6 12,13 2,6" />
              </svg>
            </div>
            <div className="info-text">
              <h4>Direct Email</h4>
              <p>
                <a href="mailto:info@fairhomedecor.com">info@fairhomedecor.com</a>
              </p>
            </div>
          </div>

          {/* Shipping Ports */}
          <div className="info-item">
            <div className="info-icon" aria-hidden="true">
              <svg
                width="20"
                height="20"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <rect x="2" y="7" width="20" height="14" rx="2" ry="2" />
                <path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16" />
              </svg>
            </div>
            <div className="info-text">
              <h4>Shipping Ports &amp; Warehouses</h4>
              <p>
                FOB Mumbai / Mundra (India)
                <br />
                POE Port in the US
                <br />
                FOB Warehouse in New Jersey
              </p>
            </div>
          </div>

          <div className="divider-rule"></div>

          <div className="info-text" style={{ marginBottom: "10px" }}>
            <h4>Follow Our Socials</h4>
          </div>
          <div className="social-row">
            <a
              href="https://www.instagram.com/fairhomedecorinc/"
              className="social-btn"
              aria-label="Instagram"
              target="_blank"
              rel="noopener noreferrer"
            >
              <svg
                width="18"
                height="18"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="1.8"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <rect x="2" y="2" width="20" height="20" rx="5" ry="5" />
                <circle cx="12" cy="12" r="4.5" />
                <circle cx="17.5" cy="6.5" r="1" fill="currentColor" stroke="none" />
              </svg>
            </a>
            <a
              href="https://www.facebook.com/profile.php?id=61593950044982"
              className="social-btn"
              aria-label="Facebook"
              target="_blank"
              rel="noopener noreferrer"
            >
              <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z" />
              </svg>
            </a>
          </div>
        </div>

        {/* Form Column */}
        <div className="form-col">
          <div className="contact-tab-nav" role="tablist">
            <button
              type="button"
              className={`contact-tab-btn ${activeTab === "general" ? "active" : ""}`}
              onClick={() => setActiveTab("general")}
              role="tab"
              aria-selected={activeTab === "general"}
            >
              <span>General Message</span>
            </button>
            <button
              type="button"
              className={`contact-tab-btn ${activeTab === "trade" ? "active" : ""}`}
              onClick={() => setActiveTab("trade")}
              role="tab"
              aria-selected={activeTab === "trade"}
            >
              <span>Trade Application</span>
              <span className="trade-pill">B2B</span>
            </button>
          </div>

          <div id="formHeader">
            <h3 id="formTitle">{activeTab === "general" ? "Send a Message" : "Apply for B2B Wholesale Account"}</h3>
            <p id="formSub">Fill in the form below and our team will get back to you as soon as possible.</p>
          </div>

          {/* Product inquiry banner */}
          {inquiryProduct && (
            <div
              className="product-inquiry-box"
              style={{
                display: "block",
                padding: "12px 16px",
                background: "var(--cream)",
                border: "1px solid var(--border)",
                borderRadius: "4px",
                marginBottom: "20px",
                fontSize: "13px",
              }}
            >
              <strong>Inquiring about:</strong> {inquiryProduct}
            </div>
          )}

          {!submitted ? (
            <>
              {activeTab === "general" ? (
                <form id="contactForm" onSubmit={handleGeneralSubmit}>
                  <div className="form-row">
                    <div className="form-group">
                      <label htmlFor="firstName">First Name *</label>
                      <input
                        type="text"
                        id="firstName"
                        name="firstName"
                        placeholder="First name"
                        defaultValue={currentUser?.firstName || ""}
                        key={currentUser?.firstName || "fn"}
                        required
                      />
                    </div>
                    <div className="form-group">
                      <label htmlFor="lastName">Last Name *</label>
                      <input
                        type="text"
                        id="lastName"
                        name="lastName"
                        placeholder="Last name"
                        defaultValue={currentUser?.lastName || ""}
                        key={currentUser?.lastName || "ln"}
                        required
                      />
                    </div>
                  </div>

                  <div className="form-group">
                    <label htmlFor="email">Email Address *</label>
                    <input
                      type="email"
                      id="email"
                      name="email"
                      placeholder="you@company.com"
                      defaultValue={currentUser?.email || ""}
                      key={currentUser?.email || "em"}
                      required
                    />
                  </div>

                  <div className="form-group">
                    <label htmlFor="phone">Phone / WhatsApp</label>
                    <input type="tel" id="phone" name="phone" placeholder="+1 (785) 713-1584" />
                  </div>

                  <div className="form-group">
                    <label htmlFor="subject">Topic of Interest</label>
                    <select
                      id="subject"
                      name="subject"
                      value={subjectVal}
                      onChange={(e) => setSubjectVal(e.target.value)}
                    >
                      <option value="product_inquiry">Product Inquiry</option>
                      <option value="wholesale">Container Load (HC40) / Wholesale</option>
                      <option value="custom_order">Custom Furniture Order</option>
                      <option value="catalogue">Trade Catalogue Request</option>
                      <option value="general">General Question</option>
                      <option value="other">Other</option>
                    </select>
                  </div>

                  <div className="form-group">
                    <label htmlFor="message">Your Message *</label>
                    <textarea
                      id="message"
                      name="message"
                      placeholder="Please describe the items or quantities you are interested in..."
                      required
                      defaultValue={inquiryProduct ? `Hello, I would like to inquire about: ${inquiryProduct}` : ""}
                    ></textarea>
                  </div>

                  <button type="submit" className="btn-submit">
                    <span>Send</span>
                    <svg
                      className="send-icon"
                      width="15"
                      height="15"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <line x1="22" y1="2" x2="11" y2="13"></line>
                      <polygon points="22 2 15 22 11 13 2 9 22 2"></polygon>
                    </svg>
                  </button>
                </form>
              ) : (
                <form id="tradeForm" onSubmit={handleTradeSubmit}>
                  <div className="form-group">
                    <label htmlFor="tradeBusinessName">Business / Design Studio Name *</label>
                    <input
                      type="text"
                      id="tradeBusinessName"
                      name="businessName"
                      placeholder="e.g. Studio Arch Design LLC"
                      required
                    />
                  </div>

                  <div className="form-row">
                    <div className="form-group">
                      <label htmlFor="tradeFirstName">First Name *</label>
                      <input
                        type="text"
                        id="tradeFirstName"
                        name="firstName"
                        placeholder="First name"
                        defaultValue={currentUser?.firstName || ""}
                        key={`trade-${currentUser?.firstName || "fn"}`}
                        required
                      />
                    </div>
                    <div className="form-group">
                      <label htmlFor="tradeLastName">Last Name *</label>
                      <input
                        type="text"
                        id="tradeLastName"
                        name="lastName"
                        placeholder="Last name"
                        defaultValue={currentUser?.lastName || ""}
                        key={`trade-${currentUser?.lastName || "ln"}`}
                        required
                      />
                    </div>
                  </div>

                  <div className="form-group">
                    <label htmlFor="tradeEmail">Professional Trade Email *</label>
                    <input
                      type="email"
                      id="tradeEmail"
                      name="email"
                      placeholder="trade@company.com"
                      defaultValue={currentUser?.email || ""}
                      key={`trade-${currentUser?.email || "em"}`}
                      required
                    />
                  </div>

                  <div className="form-group">
                    <label htmlFor="tradePhone">Phone / WhatsApp *</label>
                    <input type="tel" id="tradePhone" name="phone" placeholder="+1 (785) 713-1584" required />
                  </div>

                  <div className="form-group">
                    <label htmlFor="tradeBusinessType">Business Type *</label>
                    <select id="tradeBusinessType" name="businessType" required defaultValue="">
                      <option value="" disabled>
                        Select your business type
                      </option>
                      <option value="Interior Designer / Studio">Interior Designer / Studio</option>
                      <option value="Architect / Firm">Architect / Architectural Firm</option>
                      <option value="Hospitality / Hotel / Restaurant">Hospitality / Hotel / Restaurant</option>
                      <option value="Retail Store / Boutique">Retail Store / Furniture Boutique</option>
                      <option value="Real Estate Developer">Real Estate Developer</option>
                      <option value="Wholesale Importer / Distributor">Wholesale Importer / Container Buyer</option>
                    </select>
                  </div>

                  <div className="form-group">
                    <label htmlFor="tradeTaxId">Resale Certificate / Tax ID (EIN)</label>
                    <input type="text" id="tradeTaxId" name="taxId" placeholder="State Tax ID or Federal EIN" />
                  </div>

                  <div className="form-group">
                    <label htmlFor="tradeMessage">Project or Sourcing Requirements</label>
                    <textarea
                      id="tradeMessage"
                      name="tradeMessage"
                      placeholder="Tell us about your upcoming project, expected volume, or catalogue requirements..."
                    ></textarea>
                  </div>

                  <button type="submit" className="btn-submit">
                    <span>Send</span>
                    <svg
                      className="send-icon"
                      width="15"
                      height="15"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <line x1="22" y1="2" x2="11" y2="13"></line>
                      <polygon points="22 2 15 22 11 13 2 9 22 2"></polygon>
                    </svg>
                  </button>
                </form>
              )}
            </>
          ) : (
            <div className="success-msg" style={{ display: "block" }}>
              <div className="success-icon animate-pop">
                <svg
                  width="30"
                  height="30"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  strokeWidth="2.5"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                >
                  <polyline points="20 6 9 17 4 12" />
                </svg>
              </div>
              <h3>Thank You, {customerName}!</h3>
              <p id="successDesc">
                Your message has been received! Our team in East Brunswick, NJ will review your request and get back to you
                promptly.
              </p>
              <button type="button" className="btn-success-reset" onClick={() => setSubmitted(false)}>
                Send Another Query
              </button>
            </div>
          )}
        </div>
      </section>

      {/* Interactive Map Section */}
      <div className="map-section">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3034.5!2d-74.4276!3d40.4288!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c3c6b2d5b5b5b5%3A0x0!2s1%20Auer%20Ct%2C%20East%20Brunswick%2C%20NJ%2008816!5e0!3m2!1sen!2sus!4v1"
          allowFullScreen={false}
          loading="lazy"
          referrerPolicy="no-referrer-when-downgrade"
          title="Fair Home Decor Location — 1 Auer Ct, East Brunswick, NJ"
        ></iframe>
      </div>

      <Footer />
    </>
  );
}

export default function ContactPage() {
  return (
    <Suspense fallback={<div style={{ padding: "40px", textAlign: "center" }}>Loading contact...</div>}>
      <ContactContent />
    </Suspense>
  );
}

