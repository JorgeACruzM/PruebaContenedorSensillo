from flask import Flask, render_template
from datetime import datetime, timedelta

app = Flask(__name__)

def get_days_until_end_of_month():
    today = datetime.now()
    next_month = today.replace(day=28) + timedelta(days=4)  # Esto asegura el siguiente mes
    end_of_month = next_month - timedelta(days=next_month.day)  # Último día del mes actual
    return (end_of_month - today).days + 1

@app.route('/')
def index():
    days_remaining = get_days_until_end_of_month()
    return render_template('index.html', days_remaining=days_remaining)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)