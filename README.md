
---

# Quiz Application

A web-based platform developed using Java Server Pages (JSP) and Java. The Quiz Application streamlines the process of creating, managing, and participating in quizzes, serving as an efficient online assessment tool for educators and learners.

---

## Table of Contents

- [Overview](#overview)
- [Screenshots](#screenshots)
- [Features](#features)
- [Technology Stack](#technology-stack)
- [System Requirements](#system-requirements)
- [Installation and Setup](#installation-and-setup)
- [Docker Support](#docker-support)
- [Future Enhancements](#future-enhancements)
- [License](#license)

---

## Overview

The Quiz Application is designed to facilitate user management and quiz administration through a user-friendly interface. It allows users to register, log in, and take quizzes, while administrators can create, update, and manage quiz content. Real-time score calculation and performance tracking help both educators and learners monitor progress and areas for improvement.

---

## Screenshots

### 1. Home Page
![Home Page](https://github.com/user-attachments/assets/a2cc2867-94b1-43f5-accb-6932f975287a)

### 2. Registration Page
![Registration Page](https://github.com/user-attachments/assets/c606fad9-e4b3-4b84-a781-c8ce854f1c9c)

### 3. Login Page
![Login Page](https://github.com/user-attachments/assets/99f1fbc9-e149-46c9-9a66-729a72073297)

### 4. Subject for Quiz
![Subject for Quiz](https://github.com/user-attachments/assets/d504f2fa-3892-4fb0-ac3f-33acd2a73279)

### 5. Quiz Page
![Quiz Page](https://github.com/user-attachments/assets/6bc976ca-afdb-4846-bd5e-4d1f9a64d11b)

### 6. Quiz Result Page
![Quiz Result Page 1](https://github.com/user-attachments/assets/347c3714-267f-4c99-9d2d-b549432be64d)
![Quiz Result Page 2](https://github.com/user-attachments/assets/611631af-e8db-479f-baf9-c303605a9b3c)

### 7. Admin Dashboard
![Admin Dashboard](https://github.com/user-attachments/assets/07e88753-60a8-4d09-b906-c5da6de59bee)

### 8. Create/Edit Quiz Page
![Create/Edit Quiz Page](https://github.com/user-attachments/assets/a04c7a0b-c885-4bf8-98bf-371fd0089a94)

---

## Features

- **User Management:**  
  Registration, login, and role-based access for administrators and regular users.

- **Quiz Management:**  
  Create, update, and delete quizzes and questions with support for multiple-choice formats.

- **Real-Time Assessment:**  
  Immediate score calculation along with detailed performance reports.

- **Performance Tracking:**  
  Historical data storage for tracking progress over time.

- **Secure Data Handling:**  
  Ensures the security and confidentiality of quiz data through a robust architecture.

---

## Technology Stack

- **Frontend:**  
  - Java Server Pages (JSP)
  - HTML
  - CSS
  - JavaScript

- **Backend:**  
  - Java Servlets
  - JDBC

- **Database:**  
  - MySQL

- **Server:**  
  - Apache Tomcat

- **Version Control:**  
  - Git, GitHub

---

## System Requirements

### Software Requirements

- **Java Development Kit (JDK):** Version 8 or higher
- **IDE:** NetBeans or any Java-compatible IDE
- **Database:** MySQL
- **Application Server:** Apache Tomcat 8.5 or higher
- **Version Control:** Git

### Hardware Requirements

- **Processor:** Intel Core i3 or equivalent
- **RAM:** 8 GB or higher
- **Storage:** 250 GB SSD or higher

---

## Installation and Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your_username/quiz-application.git
   ```

2. **Configure the Database:**

   - Create a MySQL database named `quiz_db`.
   - Update the database configuration parameters in your application (e.g., JDBC URL, username, password).

3. **Deploy the Application:**

   - Build the project and generate the WAR file.
   - Deploy the WAR file to the Apache Tomcat `webapps` directory.
   - Start the Tomcat server.

4. **Access the Application:**

   Open your browser and navigate to:  
   `http://localhost:8080`  
   You should now see the Quiz Application Home Page.

---

## Docker Support

You can run the Quiz Application using Docker. This setup uses a Dockerfile to containerize the application and Docker Compose to manage both the application and a MySQL database container.

### Dockerfile

Create a `Dockerfile` in the root directory with the following content:

```dockerfile
# Use an official Tomcat image from Docker Hub
FROM tomcat:8.5-jdk8-openjdk

# Set working directory to Tomcat webapps folder
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file and rename it to ROOT.war for default deployment
COPY ./quiz-application.war ./ROOT.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
```

### Docker Compose File

Create a `docker-compose.yml` file in the root directory with the following content:

```yaml
version: '3.8'

services:
  app:
    build: .
    container_name: quiz-app
    ports:
      - "8080:8080"
    depends_on:
      - db
    networks:
      - quiz-network
    environment:
      - DB_HOST=db
      - DB_PORT=3306
      - DB_NAME=quiz_db
      - DB_USER=root
      - DB_PASSWORD=root

  db:
    image: mysql:5.7
    container_name: quiz-db
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: quiz_db
    ports:
      - "3306:3306"
    networks:
      - quiz-network
    volumes:
      - quiz-db-data:/var/lib/mysql

networks:
  quiz-network:
    driver: bridge

volumes:
  quiz-db-data:
    driver: local
```

### Running the Application with Docker

1. **Build and start the containers:**

   In the project root, run:

   ```bash
   docker-compose up --build
   ```

2. **Access the Application:**

   Open your browser and navigate to:  
   `http://localhost:8080`

---

## Future Enhancements

- **User Analytics:**  
  Integration of advanced analytics to provide deeper insights into user performance.

- **Responsive Design:**  
  Improve mobile responsiveness and cross-browser compatibility.

- **Enhanced Security:**  
  Further secure authentication and data encryption mechanisms.

- **API Integration:**  
  Develop RESTful APIs to support integration with external systems.

---

