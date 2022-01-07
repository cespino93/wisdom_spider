# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Website.destroy_all

design = Category.create(name: "Design")
coding = Category.create(name: "Coding")
health = Category.create(name: "Health")

Website.create(title: "TinyWow", description: "Perfect for computer users arouind the world", 
    image_url: "https://tinywow.com/v2/img/logo.svg", category_id: design.id)
