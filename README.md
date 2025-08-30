# Multi-Stage Docker Build Demo

This project demonstrates the use of **multi-stage builds in Docker** to create smaller, more secure container images by separating build-time dependencies from the final runtime image.

---

## 🚀 Project Description

# Multi-Stage Docker Build Demo (Java + Maven)

This project demonstrates how to use **Docker multi-stage builds** with a Java Maven application.  
The goal is to separate **build-time dependencies** (like Maven & JDK) from the **runtime environment**, resulting in a **smaller and more secure Docker image**.

---

## 🚀 Project Structure

---
multi-stage-docker-demo/
- Dockerfile # Multi-stage Docker build
- Dockerfile.single # Single-stage Docker build
- pom.xml # Maven build configuration
- src/main/java/com/example/HelloApp.java

---


---

## 🛠️ Build & Run

### 1️⃣ Build with Multi-Stage Dockerfile
```bash
docker build -t hello-multi-stage -f Dockerfile .
```


---

---
2️⃣ Build with Single-Stage Dockerfile
```bash
docker build -t hello-single -f Dockerfile.single
```
---



---
3️⃣ Run the Container
```bash
docker run --rm -p 8080:8080 hello-multi-stage
```



