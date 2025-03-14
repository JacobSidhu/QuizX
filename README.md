# QuizX
A multiple-choice question-answer system built using distributed system architecture. Developed as an academic coursework for the Distributed Systems module at UCLan. The project showcases containerized microservices using Node.js, Express, Docker, and Azure.

# MCQ Question & Answer Service  
**University:** University of Central Lancashire (UCLan), England, UK  

---

## 📘 Project Overview

This project is part of the Distributed Systems module and aims to demonstrate the principles of distributed systems including **service independence**, **reliability**, **scalability**, and **security**.  
The goal is to design, implement, test, and deploy a **Multiple-Choice Question-and-Answer (MCQ) Service** based on a solution architecture provided.

The system is designed to simulate real-world industry practices where developers implement high-level architectural designs provided by solution architects.

### 🎯System Architecture
![Choosen Architecture](https://drive.google.com/uc?export=view&id=1ZRQ-5psZ8wSTOiRsFUaJc96ntkK2pAWk)



### 🎯 Grading Options and  🔍 Detailed Description of the Project

### 🟢 Option 1: Third Class

| Option 1 | Third Class | Minimal distributed system with basic resilience |

- **Question Application**: Displays a random question and answers  
- **Submit Application**: Allows users to add new questions/categories  
- **Database**: MySQL or MongoDB  
- **Deployment**: Docker containers on an Azure VM  
- **Feature**: Basic resilience
![software solution 01](https://drive.google.com/uc?export=view&id=1oYypaklwABKi6kH0jdkVnZEwUUOoMcOQ)


### 🟡 Option 2: 2:2 (Lower Second Class)

| Option 2 | 2:2 (Lower Second Class) | Microservices + Asynchronous messaging |

- **Microservices Architecture**
- **Asynchronous Messaging**: RabbitMQ for question submissions  
- **ETL Component**: Ensures DB updates even if a service is down
![software solution 02](https://drive.google.com/uc?export=view&id=1bUVb6wtx4pDpV7mYo1P86lVH1mO1__7T)


### 🔵 Option 3: 2:1 (Upper Second Class)

| Option 3 | 2:1 (Upper Second Class) | API Gateway + Rate limiting |

- **API Gateway (Kong)**  
- **Single entry point for all services**
- **Rate Limiting**
- **HTTPS-enabled communication**
![software solution 03](https://drive.google.com/uc?export=view&id=158KBU2f2i8ZFOZroa7mJ_5Jh0ONEiV4A)


### 🔴 Option 4: First Class

| Option 4 | First Class | Moderation microservice + Multiple databases + Authentication |

- **Moderation Microservice**: Review/approve submitted questions  
- **Multiple Databases**: MySQL and MongoDB with env-switch  
- **Authentication**: OpenID Connect (OIDC)
![software solution 04](https://drive.google.com/uc?export=view&id=1ZRQ-5psZ8wSTOiRsFUaJc96ntkK2pAWk)

---

## 🔑 Key Features

- **Distributed Architecture**
- **Resilience to Failures**
- **Scalability via Microservices & Message Queues**
- **Secure Communication (HTTPS)**
- **Authentication for Sensitive Operations**
- **Database Flexibility**

---

## Naming Convention used

### 1. **Folders**
- Use `kebab-case` (e.g., `my-folder`)
- Avoid spaces/special characters

### 2. **Files**
- Use `snake_case` for file names (e.g., `my_files`)
- Prefix files related to services or components descriptively

### 3. **Code Naming**
- **Variables**: Use `camelCase` (e.g., `questionText`, `userResponse`)
- **Constants**: Use `UPPER_SNAKE_CASE` (e.g., `MAX_VALUE`, `DEFAULT_PORT`)
- **Functions**: Use `camelCase` (e.g., `getQuestion`, `submitAnswer`)
- **Classes**: Use `PascalCase` (e.g., `MyClass`, `SubmitService`)

### 4. **Database Naming**
- Use a prefix like `db_` for tables/collections (e.g., `db_questions`, `db_categories`)
- Fields should use `snake_case` (e.g., `question_text`, `correct_answer`)

### 5. **API Endpoints**
- Use lowercase with hyphens (e.g., `/submit/new-question`)
- Use **plural nouns** for resource names (e.g., `/questions`, `/categories`)

### 6. **Docker Containers**
- Use `kebab-case` for container names (e.g., `submit-service`, `question-db`)
- Prefix with the service/module name for clarity (e.g., `submit-mq` for message queue used by Submit Service)


---

## 📬 Contact Information
**Module Leader:** Tony Nicol 
**Email:** ajnicol@uclan.ac.uk
**Developer** Jacob M
**Email** jacobSidhu@hotmail.com
**Microsoft Teams:** Available for queries
