import { useEffect, useState } from "react";
import { getWorkouts, createWorkout, updateWorkout, deleteWorkout } from "../api/workouts";
import WorkoutForm from "../components/WorkoutForm";
import WorkoutList from "../components/WorkoutList";

export default function ManageWorkouts() {
  const [workouts, setWorkouts] = useState([]);
  const [editingWorkout, setEditingWorkout] = useState(null);

  useEffect(() => {
    load();
  }, []);

  function load() {
    getWorkouts().then(setWorkouts);
  }

  function handleCreateOrUpdate(form) {
    if (editingWorkout) {
      updateWorkout(editingWorkout.workout_id, form).then(() => {
        setEditingWorkout(null);
        load();
      });
    } else {
      createWorkout({ user_id: 1, ...form }).then(load);
    }
  }

  function handleEdit(workout) {
    setEditingWorkout(workout);
  }

  function handleDelete(id) {
    deleteWorkout(id).then(load);
  }

  return (
    <div className="page">
      <h1>Manage Workouts</h1>

      <WorkoutForm
        onSubmit={handleCreateOrUpdate}
        editingWorkout={editingWorkout}
      />

      <WorkoutList
        workouts={workouts}
        onEdit={handleEdit}
        onDelete={handleDelete}
      />
    </div>
  );
}
