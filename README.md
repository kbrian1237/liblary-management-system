# 🗂️ Database Management System & CRUD API Project


This repository contains my completed assignment for the following two tasks:

- **Question 1**: Build a Complete Database Management System using MySQL
- **Question 2**: Create a Simple CRUD API using FastAPI + MySQL

---

## ✅ Question 1: Complete Database Management System (Library Management)

### 📌 Objective

Design and implement a well-structured relational database using SQL for a real-world use case.

### 📚 Use Case

**Library Management System**  
This system tracks authors, books, library members, and borrowing records.

### 🔧 Features

- 4 Tables: `Authors`, `Books`, `Members`, `Borrowings`
- Relationships:
  - One-to-Many: An author can have multiple books
  - Many-to-Many: Members can borrow many books and each book can be borrowed by many members
  - One-to-One: Each borrowing entry links one book to one member
- SQL constraints: `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`
- Sample data included

### 📄 File: `question1.sql`

This file contains all the SQL needed to:
- Create the tables with constraints
- Set up relationships
- Insert sample data

---

## ✅ Question 2: CRUD API using FastAPI + MySQL (Task Manager)

### 📌 Objective

Create a working API with Create, Read, Update, and Delete operations using MySQL and Python.

### 📋 Use Case

**Task Manager**  
A basic app where users can create and manage tasks.

### ⚙️ Tech Stack

- **Python** with **FastAPI**
- **MySQL** for the database
- **SQLAlchemy** for ORM
- **Uvicorn** for running the app

### 📁 Project Structure

