USE fittrackhub;

-- Insert sample users
INSERT INTO users (username, email, password_hash)
VALUES
('logan', 'logan@example.com', 'hashedpassword123'),
('testuser', 'test@example.com', 'hashedpassword456');

-- Insert sample workouts
INSERT INTO workouts (user_id, workout_name, description)
VALUES
(1, 'Push Day', 'Chest, shoulders, triceps'),
(1, 'Leg Day', 'Quads, hamstrings, calves');

-- Insert sample exercises
INSERT INTO exercises (workout_id, exercise_name, sets, reps, weight)
VALUES
(1, 'Bench Press', 4, 8, 135.00),
(1, 'Shoulder Press', 3, 10, 95.00),
(2, 'Squats', 4, 8, 185.00),
(2, 'Leg Press', 3, 12, 250.00);

-- Insert sample workout logs
INSERT INTO workout_logs (user_id, workout_id, log_date, duration_minutes, notes)
VALUES
(1, 1, '2024-01-10', 60, 'Felt strong today'),
(1, 2, '2024-01-12', 55, 'Legs were burning');

-- Insert sample nutrition logs
INSERT INTO nutrition_logs (user_id, log_date, calories, protein, carbs, fats)
VALUES
(1, '2024-01-10', 2200, 150, 200, 70),
(1, '2024-01-11', 2500, 180, 230, 80);

-- Insert sample goals
INSERT INTO goals (user_id, goal_type, target_value, current_value, deadline)
VALUES
(1, 'Bench Press Max', 200, 135, '2024-06-01'),
(1, 'Daily Calories', 2500, 2200, '2024-02-01');
