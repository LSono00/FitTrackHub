import { useState, useEffect } from "react";

export default function WorkoutForm({ onSubmit, editingWorkout }) {
  const [form, setForm] = useState({ workout_name: "", description: "" });

  useEffect(() => {
    if (editingWorkout) {
      setForm({
        workout_name: editingWorkout.workout_name,
        description: editingWorkout.description
      });
    }
  }, [editingWorkout]);

  function handleSubmit(e) {
    e.preventDefault();
    console.log("FORM SUBMITTED:", form);
    onSubmit(form);
    setForm({ workout_name: "", description: "" });
  }

  return (
    <form onSubmit={handleSubmit}>
      <input
        placeholder="Workout Title"
        value={form.workout_name}
        onChange={e => setForm({ ...form, workout_name: e.target.value })}
      />
      <textarea
        placeholder="Description"
        value={form.description}
        onChange={e => setForm({ ...form, description: e.target.value })}
      />
      <button type="submit">
        {editingWorkout ? "Update Workout" : "Add Workout"}
      </button>
    </form>
  );
}
