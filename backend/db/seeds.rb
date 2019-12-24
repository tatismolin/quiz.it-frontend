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

user1 = User.create(username: "tatismolin", password: "tati1234")
# user2 = User.create(username: "pysmooth", password: "pasha123")

dashboard1 = Dashboard.create(name: "JavaScript", user: user1)
dashboard2 = Dashboard.create(name: "Ruby", user: user1)
dashboard3 = Dashboard.create(name: "Rails", user: user1)
dashboard4 = Dashboard.create(name: "React", user: user1)
dashboard5 = Dashboard.create(name: "HTML", user: user1)
dashboard6 = Dashboard.create(name: "CSS", user: user1)
dashboard7 = Dashboard.create(name: "Networking", user: user1)

Card.create(name: "What is JavaScript", content: "JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", dashboard: dashboard1)
Card.create(name: "What is JavaScript", content: "JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", dashboard: dashboard1)
Card.create(name: "What is JavaScript", content: "JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", dashboard: dashboard1)
Card.create(name: "What is JavaScript", content: "JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", dashboard: dashboard1)
Card.create(name: "What is JavaScript", content: "JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", dashboard: dashboard1)
Card.create(name: "What is JavaScript", content: "JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", dashboard: dashboard1)
Card.create(name: "What is JavaScript", content: "JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", dashboard: dashboard1)
Card.create(name: "What is JavaScript", content: "JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", dashboard: dashboard1)
Card.create(name: "What is JavaScript", content: "JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", dashboard: dashboard1)
Card.create(name: "What is JavaScript", content: "JavaScript, often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", dashboard: dashboard1)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard2)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard2)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard2)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard2)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard2)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard2)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard2)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard2)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard2)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard2)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard7)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard7)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard7)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard7)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard7)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard7)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard7)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard7)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard7)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard7)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard6)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard5)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard4)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)
Card.create(name: "What is Ruby", content: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection.", dashboard: dashboard3)