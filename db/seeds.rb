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
                 price: 228,
                 quantity: 10,
                 categories: "奶油系列"
                 )

Product.create!(title: "甜蜜",
                 price: 228,
                 quantity: 10,
                 categories: "奶油系列"
                 )


Product.create!(title: "爱的乐园",
                 price: 228,
                 quantity: 10,
                 categories: "水果系列"
                 )

Product.create!(title: "缤纷盛果",
                 price: 228,
                 quantity: 10,
                 categories: "水果系列"
                 )


Product.create!(title: "德式黑森林",
                 price: 228,
                 quantity: 10,
                 categories: "巧克力系列"
                 )

Product.create!(title: "金色烂漫",
                 price: 228,
                 quantity: 10,
                 categories: "水果系列"
                 )
