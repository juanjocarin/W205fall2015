import psycopg2
import sys

conn = psycopg2.connect(dbname="postgres", database="Tcount",
    user="postgres", password="", host="localhost", port="5432")

cur = conn.cursor()
if len(sys.argv) > 1:
    word_to_find = sys.argv[1]
    cur.execute("SELECT word, count FROM Tweetwordcount WHERE word = (%s)", (word_to_find,))
    records = cur.fetchall()
    for rec in records:
        print "Total number of occurences of "'"{}"'": {}".format(rec[0], rec[1])
else:
    cur.execute("SELECT word, count FROM Tweetwordcount ORDER BY word ASC")
    records = cur.fetchall()
    for rec in records:
        print "({}, {})".format(rec[0], rec[1])

conn.commit()
conn.close()
