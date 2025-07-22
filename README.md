# 🏢 BuildingManagementWeb

**BuildingManagementWeb** is a web application for managing buildings, tenants, staff, and rental operations efficiently. Built with Spring Boot, it helps digitize and automate property management workflows.

---

## 🎯 Project Objective

To reduce the workload of real estate operations by enabling efficient management of buildings, customers, and staff through digital tools and automation.

<img width="1901" height="943" alt="image" src="https://github.com/user-attachments/assets/edfac9e9-faec-4739-a467-6f0777c028bc" />

<img width="1903" height="936" alt="image" src="https://github.com/user-attachments/assets/47e1bf6b-41a1-4e41-be85-97242fd5eabf" />

---
## 🛠 Project Description

This system is a Spring Boot–based web application that allows centralized management of real estate data. It includes:

- **Login / Authentication**: Role-based access (Admin & Staff)
- **CRUD Operations**: Add, view, update, and delete buildings, customers, and employees
- **Assignment Features**:
  - Assign staff to specific buildings
  - Assign customers to their responsible staff
- **Search & Filter**: Quickly find entities based on attributes

<img width="1901" height="931" alt="image" src="https://github.com/user-attachments/assets/238e7efc-fb74-461a-a0ac-78510049f5ef" />
---

## 💡 Highlights

- 🔐 **Spring Security**: Authentication and access control
- 💾 **Spring Data JPA + MySQL**: Efficient data access and persistence
- 🧩 **Modular Architecture**: Separation of concerns using MVC pattern
- 📱 **Responsive UI**: Built with HTML and Bootstrap for usability on all devices

---

## ⚙️ Tech Stack

| Layer         | Technologies                      |
|---------------|-----------------------------------|
| Backend       | Spring Boot, Spring Security      |
| Database      | MySQL, Spring Data JPA            |
| Frontend      | HTML, CSS, Bootstrap              |
| Deployment    | Embedded Tomcat (.jar)            |

---

## 📁 Project Directory Structure

```bash
.
├── src/
│   └── main/
│       ├── java/com/javaweb/
│       │   ├── api/                         # API endpoints (admin/web)
│       │   │   ├── admin/
│       │   │   └── web/
│       │   ├── builder/
│       │   ├── config/                      # Configuration classes
│       │   ├── constant/                    # Static constants
│       │   ├── controller/
│       │   │   ├── admin/
│       │   │   └── web/
│       │   ├── converter/                   # DTO <-> Entity converters
│       │   ├── entity/
│       │   ├── enums/
│       │   ├── exception/                   # Exception handling classes
│       │   ├── model/
│       │   │   ├── dto/
│       │   │   ├── request/
│       │   │   └── response/
│       │   ├── repository/
│       │   │   └── custom/
│       │   ├── security/                    # Spring Security configuration
│       │   │   └── utils/
│       │   ├── service/
│       │   └── utils/
│       │   └── SpringBootWebApplication.java
│
├── resources/
│   ├── static/
│   ├── application.propertie
│   └── displaytag.properties
│
├── webapp/
│   ├── WEB-INF/
│   │   ├── views/
│   │   │   ├── admin/
│   │   │   │   ├── building/
│   │   │   │   └── user/
│   │   │   └── web/
│   │   ├── common/
│   │   │   ├── admin/
│   │   │   └── web/
│   │   ├── decorators/
│
├── target/
├── .gitattributes
├── README.md
├── pom.xml
└── spring-boot.iml      
```


---
## 🚀 How to Run

1. **Clone the repository**:
   ```bash
   git clone https://github.com/chalua/BuildingManagementWeb.git
   cd BuildingManagementWeb
   ```

2. **Set up database and configure `application.properties`**:
   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/dbname
   spring.datasource.username=your-username
   spring.datasource.password=your-password
   ```

3. **Build and run the app**:
   ```bash
   mvn clean install
   java -jar target/BuildingManagementWeb-0.0.1-SNAPSHOT.jar
   ```

4. **Access the system**:
   ```
   http://localhost:8080/
   ```

---

## 📈 Future Enhancements

- Online payment and invoice generation
- Dashboard reporting for admin
- Notification system for customers
- Multi-language support
- React-based frontend (optional)
