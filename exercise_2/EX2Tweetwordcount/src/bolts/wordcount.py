from __future__ import absolute_import, print_function, unicode_literals

from collections import Counter
from streamparse.bolt import Bolt

import psycopg2


class WordCounter(Bolt):

    def initialize(self, conf, ctx):
        self.counts = Counter()
        # Initialize DB (created in advance, as well as the table
            # Tweetwordcount)
        self.conn = psycopg2.connect(dbname="postgres", database="Tcount",
            user="postgres", password="", host="localhost", port="5432")



    def process(self, tup):
        word = tup.values[0]

        # Write codes to increment the word count in Postgres
        # Use psycopg to interact with Postgres

        # Increment the local count
        self.counts[word] += 1

        cur = self.conn.cursor()

        cur.execute("SELECT word, count from Tweetwordcount")
        records = cur.fetchall()
        words = [x[0] for x in records]

        # If 1st appearance of the word, insert it
        if self.counts[word] == 1 and word not in words:
            cur.execute("INSERT INTO Tweetwordcount (word,count) \
                VALUES (%s,%s)", [word,1]);
        # For subsequent appearances, update count
        else:
            cur.execute("UPDATE Tweetwordcount SET count=%s WHERE word=%s", \
                (self.counts[word], word))
        # The order was inverted (by mistake?) in psycopg-sample.py
	self.conn.commit()
        #self.conn.close()

        self.emit([word, self.counts[word]])
        # Log the count - just to see the topology running
        self.log('%s: %d' % (word, self.counts[word]))

