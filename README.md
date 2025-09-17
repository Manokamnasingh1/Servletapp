# Java Servlet JSP App

This is a simple Java Servlet-based web application that serves a JSP page (`index.jsp`). The app is hosted for free on [Render](https://render.com) using a Docker container.

## 🌐 Live Demo
[https://servletapp.onrender.com](https://servletapp.onrender.com)

---

## 📁 Project Structure
```
ServletApp/
├── Dockerfile
├── pom.xml
├── src/
│   └── main/
│       └── webapp/
│           ├── index.jsp
│           └── WEB-INF/
│               └── web.xml
```

## 🚀 How to Run Locally

### Prerequisites
- Java JDK 8 or higher
- Apache Maven
- Docker (optional for containerized deployment)

### Build WAR File
```bash
mvn clean package
```

### Run with Tomcat (Manual)
- Copy the generated `.war` file from `target/` to your local Tomcat `webapps/` directory
- Start Tomcat and visit `http://localhost:8080/`

---

## 🐳 Docker Deployment

### Dockerfile
```Dockerfile
FROM tomcat:9.0
COPY ./src/main/webapp/ /usr/local/tomcat/webapps/ROOT/
```

### Build and Run Docker Image
```bash
docker build -t servlet-app .
docker run -p 8080:8080 servlet-app
```

Visit: `http://localhost:8080`

---

## ☁️ Deploy on Render
1. Push your code to GitHub
2. Go to [Render](https://render.com)
3. Create a new Web Service
4. Choose "Docker" and connect your GitHub repo
5. Render will build and deploy your app

---

## 📄 License
This project is licensed under the MIT License.
