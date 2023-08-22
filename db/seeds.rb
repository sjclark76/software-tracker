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


tools = Tool.create([{name: "Jest", :description => 'blah blah blah'} ,
                     {name: "StoryBook", :description => 'lorem ipsum blah blah blah'},
                     {name: "React", :description => 'lorem ipsum blah blah blah'}])

puts users[0].inspect
# ToolUser.create([
#                   {tool_id: tools[0].id, user_id: users[0].id}
#                 ] )


