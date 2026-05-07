export default function WorkoutList({ workouts, onEdit, onDelete }) {
  return (
    <ul>
      {workouts.map(w => (
        <li key={w.workout_id}>
          <strong>{w.workout_name}</strong> — {w.description}
          <button onClick={() => onEdit(w)}>Edit</button>
          <button onClick={() => onDelete(w.workout_id)}>Delete</button>
        </li>
      ))}
    </ul>
  );
}
