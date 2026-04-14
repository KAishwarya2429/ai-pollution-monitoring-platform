# 🌍 AI-Powered Pollution Monitoring & Awareness Platform

## 🚀 Overview

An intelligent web-based platform that provides **real-time Air Quality Index (AQI)** data and actionable health insights. Built as a final-year project, this system bridges the gap between raw environmental data and user awareness using a clean backend architecture.

---

## ✨ Key Features

* 🔎 **Real-Time AQI Monitoring** — Enter any city and get live AQI data
* 🧠 **Smart Categorization** — Classifies AQI into Good, Moderate, Poor, etc.
* 💡 **Health Recommendations** — Suggests precautions based on AQI level
* 🔐 **Secure Backend Architecture** — API calls handled via Java backend
* ⚙️ **CORS Issue Handling** — Implemented backend routing for reliability

---

## 🛠️ Tech Stack

* **Backend:** Java (Jakarta Servlet)
* **Frontend:** HTML, CSS, JavaScript
* **API:** OpenWeather API
* **Architecture:** Client → Backend → External API

---

## 🧩 Problem Statement

Air pollution data is available but not always accessible or understandable for common users. Most platforms only display raw AQI values without guidance.

---

## 💡 Solution

This platform not only fetches real-time AQI but also:

* Interprets pollution levels
* Provides health-based suggestions
* Ensures secure and scalable API communication via backend

---

## 🔄 System Architecture

```
User Input (City)
        ↓
Frontend (HTML/JS)
        ↓
Java Backend (Servlet)
        ↓
OpenWeather API
        ↓
Processed AQI + Recommendations
        ↓
Displayed to User
```

---

## ⚠️ Challenges & Solutions

### ❌ Challenge: CORS Restrictions

* Direct API calls from frontend were blocked

### ✅ Solution:

* Implemented backend proxy using Java Servlets
* Routed API requests through server
* Improved security and reliability

---

## ⚙️ Setup & Installation

1. Clone the repository

```bash
git clone https://github.com/KAishwarya2429/ai-pollution-monitoring-platform.git
```

2. Open in your IDE (Eclipse/IntelliJ)
3. Configure server (Apache Tomcat)
4. Add your OpenWeather API key in backend
5. Run the project

---

## 🚀 Future Scope

* 🤖 AI-based AQI prediction (next 48 hours)
* 🗺️ Interactive pollution heatmaps
* 📱 Mobile app integration
* 🏙️ Smart city dashboard integration

---

## 🎯 Learning Outcomes

* Real-world backend architecture design
* API integration and data handling
* Solving CORS issues effectively
* Building user-centric applications

---

## 🤝 Contributors

* Kawade Aishwarya Ashok

---

## 📜 License

This project is for startup or educational purposes.

---

## 🌟 Show Your Support

If you like this project:

* ⭐ Star the repository
* 🍴 Fork it
* 📢 Share it on LinkedIn

---

## 📬 Contact

For any queries or collaboration:

* LinkedIn: https://linkedin.com/in/aishwarya-kawade
* Email: aishwaryaashokkawade@gmail.com

---

> "Turning data into awareness, and awareness into action."
