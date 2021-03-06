DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS events;

CREATE TABLE tasks (
    id INTEGER PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE events (
    id INTEGER PRIMARY KEY,
    dayOfWeek TEXT NOT NULL,
    name TEXT NOT NULL,
    time INTEGER NOT NULL,
    label TEXT NOT NULL,
    location TEXT NOT NULL,
    UNIQUE(dayOfWeek,name,time)
);
