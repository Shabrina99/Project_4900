# DNA Sample Tracking System – Project 4900

This project was completed as part of a research-driven academic initiative at Brooklyn College’s Bioinformatics Laboratory. It builds on a previously developed web application by introducing substantial improvements to both the backend and frontend systems. The primary objective was to optimize the organization, security, and scalability of DNA sequencing data workflows.

Our contributions focused on enhancing the platform’s architecture to better connect biological sample metadata with the database, implementing password-protected controls for sensitive actions like experiment deletion, and integrating CSV upload/download support with the potential for future cloud storage. These developments helped evolve the system into a secure, scalable, and user-oriented platform capable of managing large-scale genomic datasets effectively.

## Features

- **Pagination and Search**: Retrieve data from tables with support for pagination and search functionality.
- **Dynamic Table Validation**: Ensures that only operations on allowed tables are processed.
- **CRUD Operations**:
  - Create: Add new experiments, runs, computers, or minions.
  - Read: Fetch data with optional pagination and search.
  - Update: Modify existing records.
  - Delete: Remove records by Admin password.
- **Error Handling**: Centralized error handling for consistent API responses.
- **Environment Configuration**: Secure configuration using environment variables.

## Project Structure
project-root
├── controllers
│ └── dbController.js # Handles database operations
├── middlewares
│ └── validateTable.js # Middleware to validate table names
├── models
│ ├── db.js # Database connection setup
│ └── tableModel.js # Database query models
├── routes
│ └── dataRoutes.js # API route definitions
├── .env # Environment variables
├── app.js # Application entry point
└── package.json # Project dependencies and scripts
## Getting Started

### Prerequisites

- Node.js (v14 or later)
- MySQL Server

### Setup Instructions
1. First, grab a copy of the repository:


