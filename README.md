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
 ```
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
 ```
## Getting Started

### Prerequisites

- Node.js (v14 or later)
- MySQL Server

### Setup Instructions
# Step 1: Download the ZIP archive from the GitHub repository
**Visit the following link and click 'Download':**
https://github.com/Shabrina99/Project_4900/blob/patch-1/BC_Nanopore_Tracker.zip

# Step 2: Extract the ZIP file
unzip BC_Nanopore_Tracker.zip

# Step 3: Navigate into the project folder
 ```
cd BC_Nanopore_Tracker
 ```

# Step 4: Install All Required Dependencies
 ```
npm install
 ```

### Additional Frontend Dependencies

This project uses [PapaParse](https://www.papaparse.com/) to parse and export CSV files in the browser.

### Install PapaParse

Navigate to the `frontend` directory and run:
 ```
cd frontend
npm install papaparse
 ```

### Configure the environment variables in a `.env` file:
    
 
    DB_HOST=localhost
    DB_USER=root
    DB_PASSWORD=your_password
    DB_NAME=labdatabase
    PORT=8000
  
### Set up the MySQL database with the necessary tables and data.

### Running the Application

1.  Start the server:
    
    ```
    node app.js
    ```

2.  The server will be running at `http://localhost:8000`.

Note:

  Ensure you have MySQL database set up with the necessary tables and data.
  
  Ensure that the database credentials in your application match those in the .env file or the database connection settings.
  
  Backup your database before making changes to prevent data loss.


**API Endpoints**

Base URL: /api/data
 ```
Method	               Endpoint	                     Description
GET	                   /:tableName	                 Fetch paginated data for a table
DELETE	               /delete/:tableName/:id	       Delete a record by ID
POST	                 /run	                         Add a new run record
POST	                 /experiment	                 Add a new experiment record
POST	                 /computer                     Add a new computer record
POST	                 /minion	                     Add a new minion record
PUT	                   /:tableName/:id	             Update a record by ID
 ```


## Start the server in a separate terminal
Move to the server directory cd server

Start the server:
 ```
    node app.js
 ```

### Contributors

**Developers:**

Shabrina Yesmin - GitHub Profile

Areej Fatima- GitHub Profile

**Supervisors:**

    Ilana Cohen - icohen1@gradcenter.cuny.edu
    
    Professor Theodore Muth - tmuth@brooklyn.cuny.edu


