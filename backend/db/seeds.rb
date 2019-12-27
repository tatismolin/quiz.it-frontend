# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Card.destroy_all
Dashboard.destroy_all
User.destroy_all

user1 = User.create(username: "tatismolin", password_digest: "tati1234")

general = Dashboard.create(name: "General", user: user1)
sql = Dashboard.create(name: "SQL", user: user1)
js = Dashboard.create(name: "JavaScript", user: user1)
ruby = Dashboard.create(name: "Ruby", user: user1)
rails = Dashboard.create(name: "Rails", user: user1)
react = Dashboard.create(name: "React", user: user1)
html = Dashboard.create(name: "HTML", user: user1)
css = Dashboard.create(name: "CSS", user: user1)
networking = Dashboard.create(name: "Networking", user: user1)
cs = Dashboard.create(name: "Computer Science", user: user1)
al = Dashboard.create(name: "Algorithms", user: user1)

Card.create(
    name: "What does it mean for a method to 'return' a value?", 
    content: "Return value is what an invoked method will be equal to. It is usually indicated by the keyword 'return' or in some languages is implicitly done with the last line of a method.", 
    dashboard: general)
Card.create(
    name: "What is the difference between a procedure, a function, and a method?", 
    content: "A procedure is a set of statements that can be repeated on demand. A function takes inputs and tfansforms them into an output. A method is a procedure that is stored on an object.", 
    dashboard: general)
Card.create(
    name: "What's the difference between a hash and an array?", 
    content: "Array is an indexed collection of values. Elements can be accessed by their index. Hash is a collection of key/value pairs. Values can be accessed randomly by their keys.", 
    dashboard: general)
Card.create(
    name: "What's the difference between a hash and object?", 
    content: "Hash is a collection of key/value pairs. An object is a collection of states and behaviors (properties and methods), and is an instance of a class. JS “Objects” are more accurate described as hashes or dictionaries.", 
    dashboard: general)
Card.create(
    name: "When should you use map? Select? Reduce? Find?", 
    content: "Map transforms a collection into a difference collection of the same size. Reduce accumulates a collection into a single value. Select/find retrieves only the items from a collection that match a condition. Find retrieves the first item from a collection that mathes a condition.", 
    dashboard: ruby)
Card.create(
    name: "What's the difference between a class and an instance of a class?", 
    content: "Class is a blueprint for creating objects that share similar state and behaviour. An instance is a concrete implementation of a class, also called an object.", 
    dashboard: ruby)
Card.create(
    name: "What's the difference between a class method and an instance method?", 
    content: "An instance method belongs to an object, and cannot be called on the class itslef. A class method is owned by the class, and cannot be called on any one instance.", 
    dashboard: ruby)
Card.create(
    name: "What is a gem? Gemfile? Gemfile.lock?", 
    content: "A gem is a collection of code that has been packaged for easy installation and reuse. A Gemfile is a list of gems, their APPROXIMATE versions, and which environments require them. A Gemfile.lock is a list of gems, thier EXACT versions, and which environments require them.", 
    dashboard: ruby)
Card.create(
    name: "What is a one to many relationship? Many to many?", 
    content: "A one to many relationship indicates that an entity can relate to many instances of another entity, but each ine of them ONLY realtes to one instance. In a many to many relationship, each entity can have an arbitrary number of relationships with the other entity.", 
    dashboard: ruby)
Card.create(
    name: "How does a database relate 2 tables?", 
    content: "A dependent table will store an independent tables's primary key as a foreign key.", 
    dashboard: sql)
Card.create(
    name: "What does 'single source of truth' mean in terms of related objects?", 
    content: "A singles source of truth refers to conicidences of two objects in a many-to-many realtionship. Whn querying an object to find out about its relations, the single source of truth is consulted instead of any of the related entities themselves.", 
    dashboard: general)
Card.create(
    name: "What is the purpose of the environment.rb file?", 
    content: "An environment.rb file imports all of the libriaries and classes that should be available to the program at run time.", 
    dashboard: ruby)
Card.create(
    name: "What does an ORM do?", 
    content: "An object-relational mapper takes ohk=ject realtionships, which are have has-many/belongs-to relationships, and translates them to foreign-key relationships (and vice-versa.)", 
    dashboard: general)
Card.create(
    name: "What is an API?", 
    content: "An API defines a contract where a certain output or state change will be given if a particular input is provided. Also refes to web services, which are accessed via HTTP APIs.", 
    dashboard: general)
Card.create(
    name: "What is semantic HTML?", 
    content: "Semantic HTML refers to using and organizing HTML elements by their meaning and purpose, rather their intended visual appearance.", 
    dashboard: html)
Card.create(
    name: "What is the DOM?", 
    content: "The DOM is the browser's representation of an HTML document and its styles. It provides a way to programatically access and manipulate these. It is internally represented as a tree. It provides an eventing interface for it;s nodes as well.", 
    dashboard: js)
Card.create(
    name: "Describe the HTTP Request/Response cycle", 
    content: "A client issues an HTTP request to an HTTP server, which fulfills the request with an HTTP response. Every request is expected to have a matching response. If a response is not givven within an expected timeframe (the timeout), it is considered failed. Clients can be browsers or computers that are also acting as servers for other requests.", 
    dashboard: networking)
Card.create(
    name: "What's the difference between the web and the internet?", 
    content: "The internet is a network of networks. It's technologies and protocols that allow these computers to send messages and data to each other. Components include the TCP/IP protocols, the ohysical cabling connecting the computers, the IP address system, and DNS. The web is a system of technologies built on top of this, an includes HTNL, CSS, JS.", 
    dashboard: networking)
Card.create(
    name: "What is a computer virus", 
    content: "A computer virus is a piece of malicous code that stops a program from executing normally, or offers someone unintended access to code or data from the program.", 
    dashboard: general)
Card.create(
    name: "What is validation, where can it occur, and what purpose does it serve?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What is an event?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What is event bubbling?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What is referential transparency?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What are the 4 pillars of OOP?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What are some tenets of functional programming?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What's the difference between authentication and authorization?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "How do you avoid storing plain-text passwords?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What is serialization?", 
    content: "", 
    dashboard: rails)
Card.create(
    name: "What are container and presentational components?", 
    content: "", 
    dashboard: react)
Card.create(
    name: "Describe the MVC architecture pattern", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What is the virtual DOM?", 
    content: "", 
    dashboard: react)
Card.create(
    name: "What is a closure?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What is Big O?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What is CORS?", 
    content: "", 
    dashboard: rails)
Card.create(
    name: "What's the semantic difference between PUT and PATCH?", 
    content: "", 
    dashboard: networking)
Card.create(
    name: "What is DRY?", 
    content: "", 
    dashboard: general)
Card.create(
    name: "What is algorithm and why learn it?", 
    content: "Algorithm is a set of procedures. We learn them because: 1. Programming languages lean on them. 2. If there is a problem that has already been solved by an algorithm, we can evaluate that algorithm's technique, and apply it.", 
    dashboard: cs)
Card.create(
    name: "", 
    content: "", 
    dashboard: al)
Card.create(
    name: "", 
    content: "", 
    dashboard: al)
Card.create(
    name: "", 
    content: "", 
    dashboard: al)
Card.create(
    name: "", 
    content: "", 
    dashboard: al)
Card.create(
    name: "", 
    content: "", 
    dashboard: al)
Card.create(
    name: "", 
    content: "", 
    dashboard: al)
Card.create(
    name: "", 
    content: "", 
    dashboard: al)
Card.create(
    name: "", 
    content: "", 
    dashboard: al)