import { useEffect, useState } from "react";
import { getWorkouts } from "../api/workouts";

export default function Dashboard() {
  const [workouts, setWorkouts] = useState([]);

  useEffect(() => {
    getWorkouts().then(setWorkouts);
  }, []);

  return (
    <div className="page">
      <h1>Workout Dashboard</h1>

      {workouts.length === 0 ? (
        <p>No workouts yet.</p>
      ) : (
        <ul>
          {workouts.map(w => (
            <li key={w.workout_id}>
              <strong>{w.workout_name}</strong> — {w.description}
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}
