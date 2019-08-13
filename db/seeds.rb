# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

avatar = 'http://fanaru.com/garden-of-sinners/image/206177-garden-of-sinners-ryougi-shiki.jpg'
description = 'This is a testing user'
User.create!(name: 'JT', avatar: avatar, description: description)

20.times do
  name = Faker::Name.name
  avatar = 'https://picsum.photos/200'
  description = Faker::ChuckNorris.fact
  User.create!(name: name, avatar: avatar, description: description)
end

def assign(event, users)
  users.each do |user|
    Like.create!(event: event, user: user)
  end
  Review.create!(content: Faker::Restaurant.review, event: event, rating: rand(1..5))
  Review.create!(content: Faker::Restaurant.review, event: event, rating: rand(1..5))
end

date = Date.new(2019, rand(1..12), rand(1..28))
name = 'teamLab Planets TOKYO'
link = 'https://planets.teamlab.art/tokyo/'
pic = 'https://planets.teamlab.art/images/pc-l/15205'
event = Event.new(name: name, start_time: date, end_time: (date + 7), capacity: rand(10..500), place: Faker::Nation.capital_city, link: link)
event.remote_pic_url = pic
event.save
assign(event, User.all[1..-1].sample(8))

date = Date.new(2019, rand(1..12), rand(1..28))
name = 'ファンタジーアート展'
link = 'http://artvivant-fantasyart.net/'
pic = 'https://artvivant-fantasyart.net/img/bg-main.jpg'
event = Event.new(name: name, start_time: date, end_time: (date + 7), capacity: rand(10..500), place: Faker::Nation.capital_city, link: link)
event.remote_pic_url = pic
event.save
assign(event, User.all[1..-1].sample(8))

date = Date.new(2019, rand(1..12), rand(1..28))
name = 'Pikachu Outbreak 2019'
link = 'https://www.pokemon.co.jp/ex/pika_event/en/'
pic = 'https://www.pokemon.co.jp/ex/pika_event/common/images/fb_en.jpg?2019'
event = Event.new(name: name, start_time: date, end_time: (date + 7), capacity: rand(10..500), place: Faker::Nation.capital_city, link: link)
event.remote_pic_url = pic
event.save
assign(event, User.all[1..-1].sample(8))

date = Date.new(2019, rand(1..12), rand(1..28))
name = '小畑健展 NEVER COMPLETE'
link = 'https://nevercomplete.jp/'
pic = 'https://nevercomplete.jp/ogp.jpg'
event = Event.new(name: name, start_time: date, end_time: (date + 7), capacity: rand(10..500), place: Faker::Nation.capital_city, link: link)
event.remote_pic_url = pic
event.save
assign(event, User.all[1..-1].sample(8))

date = Date.new(2019, rand(1..12), rand(1..28))
name = '「Fate/Grand Order -絶対魔獣戦線バビロニア-展」Road to Uruk'
link = 'https://www.fgo-babylonia-exhibition.jp/'
pic = 'https://www.fgo-babylonia-exhibition.jp/img/top/mv.jpg'
event = Event.new(name: name, start_time: date, end_time: (date + 7), capacity: rand(10..500), place: Faker::Nation.capital_city, link: link)
event.remote_pic_url = pic
event.save
assign(event, User.all[1..-1].sample(8))

p 'build seed compeleted'
