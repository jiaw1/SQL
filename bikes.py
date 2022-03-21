import sqlite3

db = sqlite3.connect("bikes.db")
db.isolation_level = None

def distance_of_user(user):
    distance = db.execute("SELECT SUM(T.distance) FROM Trips T, Users U WHERE T.user_id=U.id AND U.name=?", [user]).fetchone()[0]
    return distance

def speed_of_user(user):
    speed = db.execute("SELECT round((SUM(T.distance)/1000.0)/(SUM(T.duration)/60.0), 2) FROM Trips T, Users U WHERE T.user_id=U.id AND U.name=?;", [user]).fetchone()[0]
    return speed

def duration_in_each_city(day):
    duration = db.execute("SELECT C.name, SUM(T.duration) FROM Bikes B, Cities C, Trips T WHERE C.id = B.city_id AND B.id=T.bike_id AND day=? GROUP BY C.name", [day]).fetchall()
    return duration

def users_in_city(city):
    users = db.execute("SELECT COUNT(DISTINCT T.user_id) FROM Cities C, Bikes B, Trips T WHERE C.id = B.city_id AND B.id=T.bike_id AND C.name=?", [city]).fetchone()[0]
    return users

def trips_on_each_day(city):
    trips = db.execute("SELECT T.day, COUNT(T.day) FROM Cities C, Bikes B, Trips T WHERE C.id = B.city_id AND B.id=T.bike_id AND C.name=? GROUP BY T.day", [city]).fetchall()
    return trips

def most_popular_start(city):
    popular = db.execute("SELECT S.name, COUNT(T.from_id) AS count FROM Stops S, Cities C, Trips T WHERE S.city_id = C.id and S.id=T.from_id and C.name=? GROUP BY S.name ORDER BY count DESC LIMIT 1", [city]).fetchall()
    return popular
