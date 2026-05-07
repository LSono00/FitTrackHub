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
