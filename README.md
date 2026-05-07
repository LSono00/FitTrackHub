# FitTrack Hub — Full‑Stack Fitness Tracking Application
React • Node.js • Express • MySQL

FitTrack Hub is a multi‑page fitness tracking web application built as the final project for the Web Development course. It demonstrates full‑stack development skills, including client‑side routing, RESTful API design, persistent database storage, and responsive UI design.

This repository contains both the frontend and backend source code, along with documentation required for academic submission.

### Installation Instructions

1. Use powershell for fittrack-hub/frontend and fittrack-hub/backend and use npm run dev to start both locally which allows
   for using both frontend and backend.

## System Architecture

FitTrack Hub is built using a three‑layer architecture that separates concerns between the user interface, backend logic, and data storage.

### **Frontend (React + React Router)**
The frontend handles all user interaction and page navigation. It communicates with the backend using `fetch()` calls to REST API endpoints. React Router manages the multi‑page structure:

- **Home (`/`)** — Landing page with navigation links.
- **Dashboard (`/dashboard`)** — Fetches and displays all workouts from the backend.
- **Manage Workouts (`/manage`)** — Full CRUD interface for creating, editing, and deleting workouts.

State is managed using React hooks (`useState`, `useEffect`), ensuring data persists visually across page transitions.

### **Backend (Node.js + Express)**
The backend exposes RESTful API routes that the frontend calls. It handles:

- Validating incoming requests  
- Querying the MySQL database  
- Returning JSON responses  

Express routes are organized in a dedicated router file (`workouts.js`), and the server runs locally on port **5000**.

### **Database (MySQL)**
A local MySQL database stores all workout data. The `workouts` table includes:

- `workout_id` (primary key, auto‑increment)
- `user_id`
- `workout_name`
- `description`
- `created_at` timestamp

The backend connects to this database using a connection pool defined in `db.js`.

---

## API Documentation

### **Base URL (Local Development)**

http://localhost:5000


---

### **GET /workouts**
Retrieve all workouts.

**Response Example:**
```json
[
  {
    "workout_id": 1,
    "user_id": 1,
    "workout_name": "Chest Day",
    "description": "Bench press, incline, flys",
    "created_at": "2026-05-06T00:00:00.000Z"
  }
]
Post /workouts
{
  "user_id": 1,
  "workout_name": "Leg Day",
  "description": "Squats and lunges"
}
Put /workouts/:id
{
  "workout_name": "Updated Name",
  "description": "Updated description"
}
DELETE /workouts/:id
#Delete Workouts by ID


## AI Documentation: Collaborative Workflow & Prompt Log Summary

This project followed the required AI‑assisted workflow, where AI was used strictly as a **supporting assistant** rather than a code generator or primary creator. All structural decisions, coding, architecture, and implementation were completed independently, with AI used only for clarification, troubleshooting, and documentation support.

### **1. Original Design (Completed Independently)**
- Planned the multi‑page structure (Home, Dashboard, Manage Workouts)
- Built the React frontend, routing, components, and state logic
- Implemented the Express backend, API routes, and database connection
- Designed and created the MySQL schema and CRUD operations
- Set up local hosting for both frontend and backend
- Wrote the core application code without AI‑generated templates

### **2. AI Assistance (Used Appropriately)**
AI was used only in the following supportive ways:

- Clarifying Git commands during repository setup  
- Troubleshooting push errors and secret‑scanning blocks  
- Explaining how to run backend and frontend locally  
- Helping format the README.md sections  
- Providing guidance on how to structure documentation  
- Helping generate non‑code written content (README text, architecture description, API documentation wording)

AI did **not**:
- Generate application code  
- Build components  
- Create backend logic  
- Design the database  
- Produce the multi‑page routing structure  
- Write CRUD functionality  

All functional code was written manually.

### **3. Prompt Log Summary**
Below is a summary of the AI interactions relevant to the project:

| AI Tool Used | Purpose | User Input Type | AI Output Type | User Evaluation / Modification |
|--------------|---------|------------------|----------------|-------------------------------|
| Microsoft Copilot | Git troubleshooting | Asked how to fix push errors, remove remotes, and clean history | Provided Git commands and explanations | Verified commands, applied only those needed |
| Microsoft Copilot | Documentation support | Asked for README structure, system architecture wording, API descriptions | Generated text‑only documentation | Edited wording to match project style |
| Microsoft Copilot | Workflow clarification | Asked how to run backend/frontend locally and how to configure `.env` | Provided explanations and safe configuration guidance | Adjusted instructions to match local MySQL setup |
| Microsoft Copilot | Project organization | Asked how to combine frontend and backend into one repo | Provided safe Git steps | Followed steps after reviewing for accuracy |

### **4. Evaluation of AI Output**
All AI‑generated content was:
- Reviewed for accuracy  
- Edited for clarity  
- Adjusted to match the project’s actual implementation  
- Used only for documentation and troubleshooting, not development  

No AI‑generated code was used in the final application.

### **5. Compliance Statement**
This project complies fully with the course policy:

- **Original Design:** All code and architecture were created manually.  
- **AI Assistance:** Used only for explanations, debugging, and documentation.  
- **Documentation:** This AI usage summary serves as the required prompt log.

