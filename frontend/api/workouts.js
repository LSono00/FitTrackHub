const API_URL = "https://fittrack-hub-backend-production.up.railway.app";

export async function getWorkouts() {
  const res = await fetch(`${API_URL}/workouts`);
  return res.json();
}

export async function createWorkout(data) {
  const res = await fetch(`${API_URL}/workouts`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(data)
  });
  return res.json();
}

export async function updateWorkout(id, data) {
  const res = await fetch(`${API_URL}/workouts/${id}`, {
    method: "PUT",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(data)
  });
  return res.json();
}

export async function deleteWorkout(id) {
  const res = await fetch(`${API_URL}/workouts/${id}`, {
    method: "DELETE"
  });
  return res.json();
}
