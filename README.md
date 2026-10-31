### Library Management System - Relational Database Design & Analytics

### Project Overview

This project focuses on building a robust Relational Database Management System (RDBMS) for a library network from scratch. It establishes a complete schema architecture, primary/foreign key hierarchies, and relational constraints to maintain high data integrity. Additionally, a suite of optimized data analytics queries was developed to solve real-world operational and supply chain challenges across multiple branches. 

### Database Schema

The database models a library system using the following entities: 

* **Publisher:** Tracks publisher details, addresses, and phone numbers.
* **Books:** Catalogues book metadata linked directly to publishers.
* **Authors:** Manages many-to-one mapping for book authorship.
* **Library_Branch:** Stores information on physical library branch locations.
* **Copies:** Tracks physical inventory volumes for every title across different branches.
* **Borrower:** Contains active profile records for library members.
* **Book_Loans:** Central transactional table recording borrowing history and tracking return dates.

### Core Analytics Tasks Accomplished

* **Multi-Branch Inventory Verification:** Wrote structured queries filtering specific book titles across individual branches to evaluate physical stock depth.
* **Dormant Profile Auditing:** Formulated LEFT JOIN operations to extract records of borrowers who have never checked out a book, optimizing target engagement strategies.
* **Time-Critical Tracking:** Grouped joint records to isolate active borrower names, physical addresses, and strict return deadlines on specific calendar dates.
* **Branch Volume Aggregations:** Utilized COUNT and GROUP BY mechanisms to analyze transaction volumes per branch and isolate high-frequency consumers borrowing over five titles.

### Technologies Used

* **Language:** SQL
* **Core Concepts:** Relational Schema Design, Data Cleaning, Conditional Updates, Aggregations, Relational Integrity Constraints
