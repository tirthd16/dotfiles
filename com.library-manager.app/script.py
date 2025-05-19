import datetime
import sqlite3
import random
cx = sqlite3.connect("records.db")
cx.row_factory = sqlite3.Row
cu = cx.cursor()
records = cu.execute('select * from students').fetchall()

femaleDeskNos = [x for x in range(201, 230)]
maleDeskNos = [x for x in range(101, 160)]


def pickRandom(arr):
    if len(arr) > 0:
        random_index = random.randrange(len(arr))
        picked_element = arr[random_index]
        arr.pop(random_index)
        return picked_element
    else:
        return None


def setRandomDeskNumber():
    for row in records:
        dictRow = dict(row)
        print(dictRow)
        i = dictRow['id']
        if dictRow['gender'] == "Male":
            desk_no = pickRandom(maleDeskNos)
        else:
            desk_no = pickRandom(femaleDeskNos)
        cu.execute(
            'UPDATE students SET desk_no = ? WHERE id = ?', [desk_no, i])


def random_date_april_2025():
    start_date = datetime.date(2025, 4, 1)
    end_date = datetime.date(2025, 4, 30)
    time_between_dates = end_date - start_date
    days_between_dates = time_between_dates.days
    random_number_of_days = random.randrange(days_between_dates)
    random_date = start_date + datetime.timedelta(days=random_number_of_days)
    return random_date


def addPaymentDetails():
    for id in range(68, 78):
        period = "1 month"
        amount = "1000"
        prevDate = random_date_april_2025()
        daten = prevDate - datetime.timedelta(days=2)
        nextDate = prevDate + datetime.timedelta(days=31)
        mode = "online"
        prevDate = prevDate.strftime('%Y-%m-%d')
        nextDate = nextDate.strftime('%Y-%m-%d')
        daten = daten.strftime('%Y-%m-%d')
        cx.execute('insert into payments (student_id,period,amount,date,prev_due_date,next_due_date,mode) values(?,?,?,?,?,?,?)',[id,period,amount,daten,prevDate,nextDate,mode])

def setWaiting():
    records = cu.execute(
            'select id from students where desk_no IS NULL'
            ).fetchall()
    for record in records:
        if (random.random() > 0.5):
            id = record[0]
            cu.execute('update students set desk_no = "waiting" where id = ?', (id,))

setWaiting()
cx.commit()
cx.close()
