# Software Development Plan

- [4.1 Introduction](#41-plan-introduction)
- [4.2 Functional Requirements](#52-project-resources)
- [4.3 Performance Requirements](#53-project-organization)
- [4.4 Environmental Requirements](#54-project-schedule)

## 4.1 Plan Introduction

MarkIt on Rails is a completely rebuilt version of MarkIt; an application that aims to bridge the gap between buyers and sellers within a college community by providing them with a means of direct communication. Within the application, users will be able to search, sell, purchase, post, and track goods. The distinction between MarkIt and other similar existing applications is its exclusive availability to verified college students when they signup using a valid .edu email address. MarkIt will be accessible through web browsers on computers as well as mobile devices. In developing the application, the tasks required including becoming familiar with the database for storing and retrieving data about users and items, learning the development environment (Ruby, Ruby on Rails, SQLite3, Sass), and creating the user interface. MarkIt was initially built using HTML and Javascript with a Firebase backend, whereas this version will be built entirely using Ruby, Ruby on Rails, and with a SQL backend.

Within the scope of using SQL, the following tasks should be completed by the designated deadlines:
- Login/Sign-up (02/28)
- User Profiles (03/14)
- Creating a New Post (03/21)
- Retrieving Data (03/28)

Creating the user interface should be accomplished by the following deadlines:
- Searching Items (03/20)
- Tagging Items (03/27)

Testing the product should be accomplished by the following date:
- Beta Testing (04/12)
- MVP User Interface (04/12)

## 4.2 Project Resources

### 4.2.1 Hardware Resources

| Operating System | CPU Name      | CPU speed | # of CPU Cores | Amount of Ram | Name of GPU             | Amount of VRAM | Purpose     |
|:----------------:|---------------|-----------|----------------|---------------|-------------------------|----------------|-------------|
| Windows          | Intel Core i7 | 3.75 GHz  | 4 Cores        | 16 GB         | ASUS ROG Strix GTX 1080 | 8 GB           | Development |
| OSX              | Intel Core i5 | 2.5 GHz   | 4 Cores        | 8 GB          | Intel HD Graphics 4000  | 1536 MB        | Development |

| Operating System | Model     | Purpose |
|:----------------:|-----------|---------|
| Android          | Pixel XL  | Testing |

### 4.2.2 Software Resources

| Software      | Purpose                                                               |
|---------------|-----------------------------------------------------------------------|
| Ruby          | The primary programming language used for development                 |
| Ruby on Rails | An MVC framework that guides and simplifies webapp development        |
| SQL           | The database software utilized                                        |
| SQLite3       | Software that interfaces with SQL and simplifies database development |
| Sass          | A slightly modified version of CSS that lets you simplify code        |
| Atom IDE      | The development environment that will be used                         |

## 4.3 Project Organization

This project has a few large integral components. The primary parts of the code base that need to be completed are as follows:

- Home/Login Pages
- Database
- Pages to create postings
- Pages to view postings

## 4.4 Project Schedule

Goals will be achieved as checkpoints in major functionality. The current goals and corresponding schedule are as follows:

Database related functions:
- Login/Sign-up (02/28)
- User Profiles (03/14)
- Creating a New Post (03/21)
- Retrieving Data (03/28)

Creating the user interface should be accomplished by the following deadlines:
- Searching Items (03/20)
- Tagging Items (03/27)

Testing the product should be accomplished by the following date:
- Beta Testing (04/12)
- MVP User Interface (04/12)
