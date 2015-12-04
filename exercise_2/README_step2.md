SAMPLE APPLICATION - POSSIBLE BUG?

I noticed a possible error in the hello-stream-twitter.py code (though it's irrelevant to successfully complete the exercise):

Tweets are lowered (`self.dataJsonText = self.dataJson["text"].lower()`)... but then we look for `"Hello"` (a word with capital letters), so only a count (the number of tweets in 60sec) is printed out:

If we change `Hello` to `hello` in line 33 we actually get those tweets containing that word.
