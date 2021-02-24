from bottle import redirect, install, view, route, request, run, static_file
from bottle_sqlite import SQLitePlugin
import sqlite3
from sqlite3 import Error

@route('/<filename>')
def server_static(filename):
    return static_file(filename, root='./static_files')

@route('/img/<filename>')
def img(filename):
    return static_file(filename, root='./img')

@route('/entries')
@view('entries')
def entries():
    conn = sqlite3.connect('burling.db')
    c = conn.cursor()
    c.execute("""SELECT tbl_entries.EntryID, tbl_students.StudentID, tbl_students.FirstName, tbl_students.LastName, tbl_students.Gender, tbl_students.House, tbl_students.Age, tbl_events.EventID, tbl_events.Event, tbl_events.Type 
    FROM tbl_students, tbl_events
    INNER JOIN tbl_entries ON tbl_entries.EventID = tbl_events.EventID and tbl_entries.StudentID=tbl_students.StudentID
    ORDER BY EntryID""")
    rows = c.fetchall()
    
    return dict(rows=rows)
    
@route('/entries/delete', method='POST')
def deleteEntry():
    id = request.forms.get('id')
    conn = sqlite3.connect('burling.db')
    conn.execute("DELETE FROM tbl_entries WHERE EntryID = ?", (id,))
    conn.commit()

    redirect ("/entries")

@route('/events')
@view('events')
def events():
    return dict()

@route('/events/track')
@view('track')
def track():
    conn = sqlite3.connect('burling.db')
    c = conn.cursor()
    c.execute("SELECT Event FROM tbl_events WHERE Type='Track'")  
    rows = c.fetchall()
    
    return dict(rows=rows)

@route('/events/field')
@view('field')
def track():
    conn = sqlite3.connect('burling.db')
    c = conn.cursor()
    c.execute("SELECT Event FROM tbl_events WHERE Type='Field'")  
    rows = c.fetchall()
    
    return dict(rows=rows)

@route('/', method='GET')
@view('burling')
def bg():
    conn = sqlite3.connect('burling.db')
    c = conn.cursor()
    
    c.execute("SELECT StudentID, FirstName, LastName, Gender, House, Age FROM tbl_students WHERE House = 'BG' AND Age=15")
    fifteens=c.fetchall()

    c.execute("SELECT StudentID, FirstName, LastName, Gender, House, Age FROM tbl_students WHERE House = 'BG' AND Age=16")
    sixteens=c.fetchall()

    c.execute("SELECT StudentID, FirstName, LastName, Gender, House, Age FROM tbl_students WHERE House = 'BG' AND Age=17")
    seventeens=c.fetchall()

    c.execute("SELECT StudentID, FirstName, LastName, Gender, House, Age FROM tbl_students WHERE House = 'BG' AND Age>17")
    opens=c.fetchall()

    c.execute("SELECT EventID, Event FROM tbl_events")
    events=c.fetchall()

    return dict(fifteens=fifteens, sixteens=sixteens, seventeens=seventeens, opens=opens, events=events)

@route('/submit', method='POST')
def bgsub():
    StudentID = request.forms.get('StudentID')
    EventID = request.forms.get('EventID')
    conn = sqlite3.connect('burling.db')
    conn.execute("INSERT INTO tbl_entries (StudentID, EventID) VALUES (?, ?)", [StudentID, EventID])
    conn.commit()

    redirect ("/")


run(host='localhost', port=8080, debug=True)