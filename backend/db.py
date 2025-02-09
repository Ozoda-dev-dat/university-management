import psycopg2

def connect_db():
    conn = psycopg2.connect(
        dbname="university_db",
        user="username",
        password="password",
        host="localhost",
        port="5432"
    )
    return conn
