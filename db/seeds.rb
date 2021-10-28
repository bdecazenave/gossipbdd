# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do 
    City.create(
        name:Faker::Address.city,
        zip_code:Faker::Address.zip_code)
end

10.times do
    User.create(
        first_name:Faker::Name.first_name,
        last_name:Faker::Name.last_name,
        description:Faker::Lorem.paragraph,
        email:Faker::Internet.email, 
        age:Faker::Number.between(from: 20, to: 65),
        city: City.all.sample) 
end

20.times do 
    Gossip.create(
        user: User.all.sample,
        title:Faker::Book.title, 
        content:Faker::Lorem.paragraph)
end

10.times do 
    Tag.create(
      title:Faker::Lorem.characters(number: 1))
end

5.times do
    JoinTableGossipTag.create(
        gossip: Gossip.all.sample, 
        tag: Tag.all.sample)
end


4.times do 
    user_random = User.all.sample
    user_random2 = User.all.sample
    
    while user_random == user_random2
        user_random2 = User.all.sample
    end
    #permet de ne pas avoir le même user sender et recipient

    PrivateMessage.create(
        sender: user_random, 
        recipient: user_random2,
        content:Faker::Lorem.paragraph)
end
