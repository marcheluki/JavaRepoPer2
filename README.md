# Library Management API
This project is a RESTful API for managing a library system using Oracle Cloud. It allows you to manage books and patrons (people who borrow books). The API is built using Spring Boot and connects to an Oracle database.

---

## 📋 Instructions

### 1. Clone the Repository
Download the repository from GitHub:
```bash
git clone https://github.com/marcheluki/JavaRepoPer2.git
```

---

### 2. Set Up the Database
1. **Create the Database Tables**  
   Navigate to the `Database/schema` folder and execute the SQL scripts in your Oracle database:
   - `Books.sql`: Creates the `books` table.
   - `Patrons.sql`: Creates the `patrons` table.

2. **Insert Sample Data**  
   Use the `Database/InsertsExample/Inserts` script to populate the `books` table with sample data for testing.

---

### 3. Configure the Application
Update the database connection settings in `src/main/resources/application.properties`:
```properties
spring.datasource.url=jdbc:oracle:thin:@//localhost:1522/TESTDB
spring.datasource.username=YOUR_DB_USERNAME
spring.datasource.password=YOUR_DB_PASSWORD
```
- Replace `localhost` with your database URL.
- Replace `1522` with your database port (default is usually `1521`).
- Replace `TESTDB` with your database service name.
- Replace `YOUR_DB_USERNAME` and `YOUR_DB_PASSWORD` with your database credentials.

---

### 4. Run the API
Start the API using Maven:
```bash
mvn spring-boot:run
```

The API will be available at `http://localhost:8080`.

---

### 5. Test the API
1. **Download Postman**  
   Install [Postman](https://www.postman.com/downloads/) to test the API.

2. **Import Postman Collections**  
   Import the collections from the `IntegrationTesting` folder:
   - `CollectionLibrary.json`: For managing books.
   - `CollectionPatrons.json`: For managing patrons.

3. **Endpoints**  
   Use the following endpoints to interact with the API:

   #### Books
   - `GET /api/books`: Retrieve all books.
   - `GET /api/books/{id}`: Retrieve a book by ID.
   - `POST /api/books`: Add a new book.
   - `PUT /api/books/{id}`: Update a book by ID.
   - `DELETE /api/books/{id}`: Delete a book by ID.

   #### Patrons
   - `GET /api/patrons`: Retrieve all patrons.
   - `GET /api/patrons/{id}`: Retrieve a patron by ID.
   - `POST /api/patrons`: Add a new patron.
   - `PUT /api/patrons/{id}`: Update a patron by ID.
   - `DELETE /api/patrons/{id}`: Delete a patron by ID.

---

## 🛠️ Technologies Used
- **Java 17**
- **Spring Boot**
- **Oracle Database**
- **Hibernate (JPA)**
- **Postman** (for testing)

---

## 📂 Project Structure
```
LibraryManagement/
├── Database/
│   ├── InsertsExample/
│   │   └── Inserts
│   ├── schema/
│   │   ├── Books.sql
│   │   └── Patrons.sql
├── IntegrationTesting/
│   ├── CollectionLibrary.json
│   ├── CollectionPatrons.json
├── src/
│   ├── main/
│   │   ├── java/com/example/library/
│   │   │   ├── controller/
│   │   │   ├── model/
│   │   │   ├── repository/
│   │   │   └── LibraryApplication.java
│   │   └── resources/
│   │       └── application.properties
├── pom.xml
```

---

## 🚀 How to Contribute
1. Fork the repository.
2. Create a new branch for your feature: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m "Add feature-name"`.
4. Push to the branch: `git push origin feature-name`.
5. Open a pull request.

---

## 📧 Contact
For any questions or feedback, please contact the repository owner.