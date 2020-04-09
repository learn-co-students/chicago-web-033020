# Intro to ORMs (Object Relational Mappers)

Object: Classes and instances/Ruby World
  Class - where the definition of the object and its data lives, knows how instances get created
  Instance - holds one set of object data, knows how to behave based on class instructions
  Instance variable - single piece of info on one instance, defined in the class initialize method

Relational: Databases/SQL World
  Tables - where the definition of that type of data lives, knows what the columns are called and what kinds of data will live in them
  Table row - holds one set of table data
  Field / columm - single piece of row info, type s defined by the table

Mapper:
Tool that knows how to translate between SQL World / Ruby World
Turns objects into data, vice versa
Streamlines otherwise tedious and repetitive work

# SQL CRUD REVIEW

A tweet belongs to a user and has some message content - must have user_id

The belongs_to must have a user_id on it

A user has a username, and has many tweets

A tweet can have many tags and a tag can have many tweets
