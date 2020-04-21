# SINATRA FORMS AND REST

Objectives

- Learn what REST is
- Discuss Seven Things You Can Do With a Resource
- Create database information from user input
  * Step by step! Start at database, and go backwards to the form
- Practice common naming and workflow conventions for joyful web development
- Organize our code in Sinatra as best we can

### REST and its Conventions

REpresentational State Transfer
HTTP is stateless, so we mimic state in the urls we use (ie object id)
Uses URLs and HTTP methods as part of the pattern
Everything is a resource, including nested resources
Naming conventions that apply no matter the resource

### SEVEN THINGS TO DO WITH ANY RESOURCE

Thing to do - RESTFUL ACTION - HTTP VERB & URL

List all books - INDEX ACTION - GET '/books'
Show one book - SHOW ACTION - GET '/books/:id'
Form to create book - NEW ACTION - GET '/books/new'
Create a new book - CREATE ACTION - POST '/books'
Form to update book - EDIT ACTION - GET '/books/:id/edit'
Update a book - UPDATE ACTION - PUT/PATCH '/books/:id'
Delete a book - DESTROY ACTION - DELETE '/books/:id'