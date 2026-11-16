# Little Market — Java E-Commerce (No MySQL)

A starter full-stack Java e-commerce website using Spring MVC, JSP, HTML, CSS and JavaScript. It does **not** connect to MySQL or any other database.

## Requirements
- JDK 17
- Maven 3.6+
- Visual Studio Code
- VS Code Extension Pack for Java (recommended)

## Run in VS Code
1. Extract the ZIP.
2. Open the extracted `java-ecommerce-no-mysql` folder in VS Code.
3. Open **Terminal → New Terminal**.
4. Check Java and Maven:
   - `java -version`
   - `mvn -version`
5. Start the application:
   - Windows PowerShell: `mvn spring-boot:run`
   - macOS/Linux: `mvn spring-boot:run`
6. Open `http://localhost:8080` in your browser.

If PowerShell says `mvn` is not recognized, install Apache Maven and add its `bin` folder to PATH, then restart VS Code.

## Demo features
- Home page and product catalogue
- Product details
- Signup and login
- Product price and category filters
- Session-based cart: add, update and remove
- Cart total calculation
- Simulated checkout (no real payment)

## Important limitations
- **No MySQL is used.** Products are sample data in Java; user accounts are held in memory and disappear when the app restarts. Cart contents are held in the browser session.
- This is a learning/demo project, not production-ready authentication. Do not use real passwords.
- Checkout is simulated. It does not collect card details or process real payments.
- Product images load from Unsplash and therefore need an internet connection. If an image does not load, the rest of the application still works.

## Test the app
1. Select **Sign up**, create a username and password (at least 4 characters).
2. Log in with those details.
3. Add products to your cart.
4. Change quantities or remove items.
5. Continue to checkout and place the demo order.

## Project structure
```text
src/main/java/com/example/ecommerce/
  EcommerceApplication.java
  controller/StoreController.java
  model/Product.java
  model/CartItem.java
  service/StoreService.java
src/main/resources/
  application.properties
  static/css/style.css
src/main/webapp/WEB-INF/jsp/
  products.jsp
  detail.jsp
  login.jsp
  signup.jsp
  cart.jsp
  checkout.jsp
```
