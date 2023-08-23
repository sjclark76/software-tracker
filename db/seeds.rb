# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{ first_name: 'Donald', last_name: 'Trump' },
                     { first_name: 'Stuart', last_name: 'Clark' },
                     { first_name: 'Ueli', last_name: 'Steck' }])


tools = Tool.create([{name: "Jest", :description => 'Jest is a JavaScript testing framework maintained by Facebook. It is designed to work out of the box, with zero configuration required. Jest is fast, easy to use, and provides powerful features such as snapshot testing and interactive watch mode. It is widely used for testing React applications, but can be used with any JavaScript codebase.'} ,
                     {name: "StoryBook", :description => 'Storybook is an open-source tool for building UI components and pages in isolation. It allows developers to create and test reusable components, and provides tools to expand essential documentation with prose and layout that feature components and stories prominently. Storybook can be used to create UI library usage guidelines, design system sites, and more.'},
                     {name: "Ruby on Rails", :description => 'Ruby on Rails, often shortened to Rails, is a popular open-source web application framework written in the Ruby programming language. It follows the model-view-controller (MVC) architectural pattern and emphasizes the use of convention over configuration (CoC) and don’t repeat yourself (DRY) practices.'},
                     {name: "React", :description => 'React is a popular JavaScript library for building user interfaces. It is maintained by Facebook and a community of individual developers and companies. React focuses on the declarative approach to programming, making it easier to understand and debug the code. It also uses a virtual DOM to improve performance by minimizing the number of updates to the actual DOM.'}])

puts users[0].inspect
# ToolUser.create([
#                   {tool_id: tools[0].id, user_id: users[0].id}
#                 ] )


