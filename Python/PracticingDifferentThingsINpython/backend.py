from flask import Flask, redirect, url_for, request
import psycopg2

app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <h1>Welcome to the Home Page</h1>
    <p><a href="/login">Go to Login</a></p>
    '''

@app.route('/success/<name>')
def success(name):
    return f'Welcome {name}'

def get_db_connection():
    try:
        conn = psycopg2.connect(
            host="localhost",
            database="psycopg2code",
            user="aryanweb",
            password="aryanweb@123"
        )
        return conn
    except Exception as e:
        print(f"Error connecting to the database: {e}")
        return None

@app.route('/login', methods=['POST', 'GET'])
def login():
    conn = get_db_connection()
    if not conn:
        return "Database connection failed"

    if request.method == 'POST':
        user = request.form['nm']
        try:
            with conn.cursor() as cursor:
                cursor.execute("INSERT INTO users (name) VALUES (%s)", (user,))
                conn.commit()
        except Exception as e:
            print(f"Error during insert operation: {e}")
            return "An error occurred"
        finally:
            conn.close()
        return redirect(url_for('success', name=user))
    else:
        user = request.args.get('nm')
        if user:
            return redirect(url_for('success', name=user))
        else:
            return '''
            <form action="/login" method="post">
                <p>Enter Name:</p>
                <p><input type="text" name="nm" /></p>
                <p><input type="submit" value="Submit" /></p>
            </form>
            '''

if __name__ == '__main__':
    app.run(debug=True)
