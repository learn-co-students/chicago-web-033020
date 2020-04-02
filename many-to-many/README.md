# Many to Many Relationships

Based off of yesterday's code, we're going to add the ability to like a tweet. We describe this specific relationship between users and tweets as a many to many relationship. Meaning that a user can like many tweets and a tweet can be liked by many users!

> **Note:** This is a separate relationship from the one to many that we built before. That relationship could be called "posted tweets" whereas this relationship should be called "liked tweets".

## The world so far

* Create a User class. The class should have these methods:
  * `#initialize` which takes a username and have
  * a reader method for the username
  * `#tweets` that returns an array of Tweet instances
  * `#post_tweet` that takse a message, creates a new tweet, and adds it to the user's tweet collection
* Create a Tweet class. The class should have these methods:
  * `Tweet#message` that returns a string
  * `Tweet#user` that returns an instance of the user class
  * `Tweet.all` that returns all the Tweets created.
  * `Tweet#username` that returns the username of the tweet's user

## Objectives

## Deliverables

* User class
  * 😻`#like_tweet` that accepts as a tweet instance as a parameter
  * `#liked_tweets` that returns a collection of all the tweets this user has liked
* Tweet class
  * `#likers` that returns a collection of all the Users who have liked this tweet

@liked_tweets = []
user.liked_tweets [tweet1, tweet2]
user2.liked_tweets [tweet1, tweet5]

tweet1.likers [user, user2]
tweet5.likers [user2]

Likes - JOIN
1      user -> tweet1
2      user -> tweet2
3      user2 -> tweet1
4      user2 -> tweet5



Posted tweets

Tweets >-------- User(posting)
<#0:0x4er634 Tweet @user=<#0x04f21re23r User> @message="tweet1">


LIKED Tweets

Tweets -------< Like >------ Users(liking)

Many To Many Process:

1) Is it a many to many? Gotta ask on *both* sides!
2) Identify/name the join model through which the many to many happens
Cows -------< CowFields >-------- Fields
Cows -------< Grazings >-------- Fields
3) Make sure the join references both things it's joining
Grazing instance variables: @cow, @field
Like ivars: @user, @tweet
4) Decide whether the join needs other info besides what things it belongs to
5) Joins "depend on" both sides, each thing joined needs to exist before the join can exist. Useful reminder when "seeding" data
6) Joins are the thhing we connect many-to-many objects "through". example: A Cow has many Grazings, and a Cow has many Fields THROUGH the Grazings it has
