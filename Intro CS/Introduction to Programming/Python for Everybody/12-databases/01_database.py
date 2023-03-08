import sqlite3 

###############################
# sqlite3.connect('file_Name.sqlite')
# cur.execute('SQL command')
###############################

conn = sqlite3.connect('emaildb.sqlite')
cur = conn.cursor()
# Create table name (work only if table not already founded)
cur.execute('DROP TABLE IF EXISTS Counts')
# set fildes
cur.execute('''CREATE TABLE Counts (email TEXT,count TEXT)''')

fname = input('Enter file name')

if len(fname) < 1:
    fname='file.txt'

# open file
fhandle=open(fname)

for line in fhandle:
    if not line.startswith('email'):
        continue
    spices = line.split()
    # or use Regular exprestion
    email = spices[5]
    # insert email in email fild in table
    cur.execute('SELECT count FROM Counts WHERE email=?',(email,)) # ? is a placeholder for each email

    row=cur.fetchone()

    # set coun is 1 if it not found else incress it 1 every once
    if row is None:
        cur.execute('''INSERT INTO Counts (email,count) VALUES (?,1)''',(email,))
    else:
        cur.execute('''UPDATE Counts SET count=count + 1 WHERE email=?''',(email,))
    conn.commit()

# Sort results by coun and print it in commind line
sqlstr = 'SELECT email ,count FROM Counts ORDER BY count DESC LIMIT 10'
for row in cur.execute(sqlstr):
    print(str(row[0]),row[1])
