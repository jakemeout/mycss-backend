# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'joman', password: "something")
Style.create(name: 'test style', properties: "{             height: 300px;                         width: 300px;                         border-style: solid;                         border-width: 30px;                         position: absolute;                         top: 0;                         bottom: 0;                         left: 0;                         right: 0;                         margin: auto;            }", user_id:1)