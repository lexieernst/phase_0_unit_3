# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields

For each user, twitter stores tweets, followers, and following.
<!-- Identify the fields Twitter collects data for -->

## Release 1: Tweet Fields

When composing a new tweet, there is a textbox that acccepts a maximum of 140 characters, an 'add photo' option, a location enable or disable option, and a button to actually send your tweet. 
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is one-to-many. A user has many tweets, but a specific tweet only belongs to exactly one user. They will be connected by the user id. 

<!-- because... -->

## Release 3: Schema Design

![alt tag](http://i.imgur.com/YqpCYgi.png)

<!-- Include your image (inline) of your schema -->

## Release 4: SQL Statements

1. all the tweets for a certain user id
2. the tweets for a certain user id that were made after 		   last Wednesday (whenever last Wednesday was for you)
3. all the tweets associated with a given user's twitter handle
4. the twitter handle associated with a given tweet id

My answers:

1. SELECT tweets FROM users 
     WHERE id = 'lexieernst'

2. SELECT tweets
    FROM users JOIN tweet ON (id = tweeter_id)
    WHERE created_at >= 2014-05-21

3. SELECT tweets
    FROM users JOIN tweet ON (id = tweeter_id)
    WHERE tweeter_id = 'lexieernst'

4. SELECT id
    FROM users JOIN tweet ON (id = tweeter_id)
    WHERE tweeter_id = '470589857656344576'


<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->

## Release 5: Reflection

It was pretty cool looking at twitter, making a one-to-one schema from its information, and writing some SQL statements to fetch information. 
<!-- Be sure to add your reflection here!!! -->