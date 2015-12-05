import psycopg2
import sys

conn = psycopg2.connect(dbname="postgres", database="Tcount",
    user="postgres", password="", host="localhost", port="5432")

range = sys.argv[1].split(',')

cur = conn.cursor()

cur.execute("SELECT word, count FROM Tweetwordcount WHERE count "\
    "BETWEEN %s AND %s ORDER by count DESC, word ASC", \
    (range[0], range[1]))
records = cur.fetchall()
print
for rec in records:
     print "({}, {})".format(rec[0], rec[1])

conn.commit()
conn.close()
