# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all
Category.destroy_all

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# Users
xyu = User.create(email:'Xyimba@xyu.by', password: 'xyu', password_confirmation: 'xyu', confirmed_at: 1.days.ago)
potato = User.create(email:'Potato@gmail.com', password: 'potato', password_confirmation: 'potato', confirmed_at: 2.days.ago, created_at: 3.days.ago)
# Posts
post1 = Post.create(user_id: xyu.id, title: 'Puta', content: 'Te quero puta! Mass Mass Mass por favor. Mass Mass Mass si si senior')
post2 = Post.create(user_id: xyu.id, title: 'Home sweet home!', content: 'Home sweet home. It\'s the place where you can hide from your problems.')
post3 = Post.create(user_id: xyu.id, title: 'JS ensherinka', content: 'Ensherinka tryed to learn js, he understand something, but can understand all what he needed.')
post4 = Post.create(user_id: xyu.id, title: 'KFC Rat-ta-ta!', content: 'Rat was founded in KFC stipces, bon appetit!Te')
post5 = Post.create(user_id: potato.id, title: 'rm -fr', content: 'Best joke from windows users')
post6 = Post.create(user_id: xyu.id, title: 'Argentina 5-0', content: 'Best goal!!! Pooper dooper.')
post7 = Post.create(user_id: potato.id, title: 'Daun ensherinka', content: 'Ensherinka daun.')
post8 = Post.create(user_id: xyu.id, title: 'BK burger king', content: 'BK dishes - so deliciuos...!')
post9 = Post.create(user_id: xyu.id, title: 'Puta', content: 'Te quero puta! Mass Mass Mass por favor. Mass Mass Mass si si senior')
post10 = Post.create(user_id: potato.id, title: 'TENACTIOUS D', content: 'RISE OF THE FENIX')
post11 = Post.create(user_id: potato.id, title: 'Tycus Findley', content: 'HELL it\'s about time!')
post12 = Post.create(user_id: xyu.id, title: 'League of legends new client', content: 'Two days ago they gave me invite to alpha client. It looks great, nice colors, but it has some bugs.')
post13 = Post.create(user_id: potato.id, title: 'Linux ls command', content: 'ls - list directory contents!')
post14 = Post.create(user_id: xyu.id, title: 'Zipper Vipper', content: 'Feature, bugs, optinions, hoohers')
post15 = Post.create(user_id: potato.id, title: 'The f*cking show must go on', content: 'It is 3 p.m. time to lug the gage?')
post16 = Post.create(user_id: xyu.id, title: 'MC MacDonalds', content: 'MC dishes - so deliciuos...!')

# Comments
Comment.create(user_id: xyu.id, post_id: post1.id, content: 'Beautyfull!')
Comment.create(user_id: potato.id, post_id: post1.id, content: 'Epic! Just epic!!!')
Comment.create(user_id: xyu.id, post_id: post2.id, content: 'Das ist mein teil...')
Comment.create(user_id: potato.id, post_id: post2.id, content: 'Epic! Just epic!!!')
Comment.create(user_id: potato.id, post_id: post2.id, content: '@#!@#@!#@!#@!#@!#@#@!@!#@!#')
Comment.create(user_id: xyu.id, post_id: post3.id, content: 'Unbelievable!')
Comment.create(user_id: potato.id, post_id: post3.id, content: 'Unbelievable!')
Comment.create(user_id: potato.id, post_id: post4.id, content: 'Unbelievable!')
Comment.create(user_id: potato.id, post_id: post4.id, content: 'Sh*t material. Unfollow!')
Comment.create(user_id: xyu.id, post_id: post10.id, content: 'Beautyfull!')
Comment.create(user_id: potato.id, post_id: post7.id, content: 'Epic! Just epic!!!')
Comment.create(user_id: xyu.id, post_id: post8.id, content: 'Das ist mein teil...')
Comment.create(user_id: potato.id, post_id: post9.id, content: 'Epic! Just epic!!!')
Comment.create(user_id: potato.id, post_id: post12.id, content: '@#!@#@!#@!#@!#@!#@#@!@!#@!#')
Comment.create(user_id: xyu.id, post_id: post16.id, content: 'Unbelievable!')
Comment.create(user_id: potato.id, post_id: post8.id, content: 'Unbelievable!')
Comment.create(user_id: potato.id, post_id: post11.id, content: 'Unbelievable!')
Comment.create(user_id: xyu.id, post_id: post9.id, content: 'Beautyfull!')
Comment.create(user_id: potato.id, post_id: post13.id, content: 'Epic! Just epic!!!')
Comment.create(user_id: xyu.id, post_id: post14.id, content: 'Das ist mein teil...')
Comment.create(user_id: potato.id, post_id: post15.id, content: 'Epic! Just epic!!!')

# Categories
Category.create(name: 'English')
Category.create(name: 'Programming')
Category.create(name: 'Food')
Category.create(name: 'Music')
Category.create(name: 'Sport')
Category.create(name: 'Games')
Category.create(name: 'Nature')
Category.create(name: 'PC')
