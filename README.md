# Little Market – Java E-Commerce Website

A simple, responsive e-commerce web application developed using **Java, Spring Boot, Spring MVC, JSP, HTML, CSS, and JavaScript**. The application demonstrates the core functionality of an online shopping platform without requiring a database.

## Overview

**Little Market** is a beginner-friendly full-stack Java e-commerce project designed to demonstrate essential online shopping features, including product browsing, user registration, login, cart management, and a simulated checkout process.

The application uses sample product data and in-memory storage instead of MySQL or any other database.

## Key Features

- **Product Catalogue:** Browse and explore available products.
- **Product Details:** View individual product descriptions, categories, and prices.
- **User Registration:** Create an account using a username and password.
- **User Login:** Log in using registered credentials.
- **Product Filtering:** Filter products by price and category.
- **Shopping Cart:** Add products, update quantities, and remove items.
- **Cart Calculation:** Automatically calculate the total price.
- **Demo Checkout:** Complete a simulated order without real payment processing.
- **Responsive Interface:** Simple and user-friendly shopping experience.

## Technologies Used

| Technology | Purpose |
|---|---|
| Java | Backend development |
| Spring Boot | Application setup and configuration |
| Spring MVC | Request handling and application logic |
| JSP | Dynamic web page rendering |
| HTML5 | Web page structure |
| CSS3 | Styling and responsive layout |
| JavaScript | Frontend interactions |
| Maven | Project and dependency management |
| HTTP Session | Temporary cart and user session management |

## Project Structure

```text
java-ecommerce-no-mysql/
│
├── src/
│   └── main/
│       ├── java/com/example/ecommerce/
│       │   ├── EcommerceApplication.java
│       │   ├── controller/
│       │   │   └── StoreController.java
│       │   ├── model/
│       │   │   ├── Product.java
│       │   │   └── CartItem.java
│       │   └── service/
│       │       └── StoreService.java
│       │
│       ├── resources/
│       │   ├── application.properties
│       │   └── static/css/
│       │       └── style.css
│       │
│       └── webapp/WEB-INF/jsp/
│           ├── products.jsp
│           ├── detail.jsp
│           ├── login.jsp
│           ├── signup.jsp
│           ├── cart.jsp
│           └── checkout.jsp
│
├── .gitignore
├── pom.xml
└── README.md
```

## Prerequisites

Install the following before running the project:

- JDK 17 or compatible Java installation
- Apache Maven 3.6 or later
- Visual Studio Code
- Extension Pack for Java (recommended)

## Installation and Setup

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/Little-Market-Ecommerce.git
```

### 2. Open the Project

Open the project folder in Visual Studio Code.

### 3. Verify Java and Maven

Open the VS Code terminal and execute:

```bash
java -version
mvn -version
```

### 4. Run the Application

Start the Spring Boot application:

```bash
mvn spring-boot:run
```

### 5. Open in Browser

Visit:

```text
http://localhost:8081
```

If your `application.properties` uses a different port, open the corresponding localhost address.

## How to Use

1. Open the Little Market application.
2. Browse the available products.
3. Create an account using the Sign Up page.
4. Log in with your registered credentials.
5. Add products to the shopping cart.
6. Update product quantities or remove items.
7. Review the cart total.
8. Proceed to checkout and place a demo order.

## Application Limitations

- **No Database Integration:** The application does not use MySQL or any other database.
- **Temporary User Accounts:** User information is stored in memory and is lost when the application restarts.
- **Session-Based Cart:** Shopping cart information is maintained using HTTP sessions.
- **Simulated Checkout:** No actual payment gateway or transaction processing is implemented.
- **External Product Images:** Product images are loaded from Unsplash and require an internet connection.

This project is intended for educational and demonstration purposes and is not designed for production use.

## Future Enhancements

- Integrate MySQL for persistent data storage.
- Implement secure password hashing and authentication.
- Add an admin dashboard for product management.
- Integrate a payment gateway.
- Add order history and tracking.
- Improve product search and filtering.

## Author

**Jeevitha S**

Computer Science and Engineering Student

## License

This project is available for educational and learning purposes.
