# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.email = "admin@honeycake.com"

u.password = "010101"
u.password_confirmation = "010101"

u.is_admin = true
u.save


Product.create!(title: "爱似流星",
                 description: "10寸",
                 price: 238,
                 quantity: 10,
                 image: open("")
                 )
