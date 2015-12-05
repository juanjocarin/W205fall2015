import psycopg2

conn = psycopg2.connect(dbname="postgres", database="Tcount",
    user="postgres", password="", host="localhost", port="5432")

cur = conn.cursor()

cur.execute("SELECT word, count FROM Tweetwordcount ORDER BY count DESC "\
    "LIMIT 20")
records = cur.fetchall()
print
for rec in records:
    print "\n({}, {})".format(rec[0], rec[1])
    for i in range(int(rec[1]/5.)):
        print '=',

conn.commit()
conn.close()
