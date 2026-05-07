-- Create database
CREATE DATABASE IF NOT EXISTS fittrackhub;
USE fittrackhub;

-- USERS TABLE
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- WORKOUTS TABLE (Workout templates created by the user)
CREATE TABLE workouts (
    workout_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    workout_name VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- EXERCISES TABLE (Exercises that belong to a workout template)
CREATE TABLE exercises (
    exercise_id INT AUTO_INCREMENT PRIMARY KEY,
    workout_id INT NOT NULL,
    exercise_name VARCHAR(100) NOT NULL,
    sets INT NOT NULL,
    reps INT NOT NULL,
    weight DECIMAL(5,2),
    FOREIGN KEY (workout_id) REFERENCES workouts(workout_id)
);

-- WORKOUT LOGS (Actual sessions the user completes)
CREATE TABLE workout_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    workout_id INT NOT NULL,
    log_date DATE NOT NULL,
    duration_minutes INT,
    notes TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (workout_id) REFERENCES workouts(workout_id)
);

-- NUTRITION LOGS
CREATE TABLE nutrition_logs (
    nutrition_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    log_date DATE NOT NULL,
    calories INT,
    protein INT,
    carbs INT,
    fats INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- GOALS TABLE
CREATE TABLE goals (
    goal_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    goal_type VARCHAR(50) NOT NULL,
    target_value INT NOT NULL,
    current_value INT DEFAULT 0,
    deadline DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);