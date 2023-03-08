###########################################
#############[ Your task is ]##############
# get all phone_numbers , count in file.txt
###########################################

import re
import sqlite3
conn = sqlite3.connect('phones_number.sqlite')
cur = conn.cursor()

cur.execute(''' DROP TABLE IF EXISTS Phones''')

cur.execute(''' CREATE TABLE Phones (phone TEXT, count TEXT)''')

f_name = input('Enter file name')

if len(f_name) < 1:
     f_name = 'file.txt'

try:
    fhandle=open(f_name)
except:
    quit()

for line in fhandle:
    phones_arr = []
    if re.search('01[0-9]+',line) == False:
        continue
    else:
        phones_arr = re.findall('01[0-9]+',line) # ['0109729729','01093468852,...]
        if len(phones_arr) > 0:
            for phone in phones_arr:
                cur.execute('''SELECT count FROM Phones WHERE phone=?''',(phone,))
                row = cur.fetchone()
                if row is None:
                    cur.execute('''INSERT INTO Phones (phone,count) VALUES (?,1)''',(phone,))
                else:
                    cur.execute('''UPDATE Phones SET count=count + 1 WHERE phone=?''',(phone,))
                conn.commit()
        
#  Sort results by coun and print it in commind line
sqlstr = 'SELECT phone, count FROM Phones ORDER BY count DESC LIMIT 10'

for row in cur.execute(sqlstr):
    print(str(row[0]),row[1])
