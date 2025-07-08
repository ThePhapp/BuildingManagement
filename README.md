# 🏢 BuildingManagementWeb

**BuildingManagementWeb** is a web application for managing buildings, tenants, staff, and rental operations efficiently. Built with Spring Boot, it helps digitize and automate property management workflows.

---

## 🎯 Project Objective

To reduce the workload of real estate operations by enabling efficient management of buildings, customers, and staff through digital tools and automation.

---

## 🛠 Project Description

This system is a Spring Boot–based web application that allows centralized management of real estate data. It includes:

- **Login / Authentication**: Role-based access (Admin & Staff)
- **CRUD Operations**: Add, view, update, and delete buildings, customers, and employees
- **Assignment Features**:
  - Assign staff to specific buildings
  - Assign customers to their responsible staff
- **Search & Filter**: Quickly find entities based on attributes

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
