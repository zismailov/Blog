# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# Users
xyu = User.create(email:'Xyimba@xyu.by', password: 'xyu', password_confirmation: 'xyu', confirmed_at: 1.days.ago)
potato= User.create(email:'Potato@gmail.com', password: 'potato', password_confirmation: 'potato', confirmed_at: 2.days.ago, created_at: 3.days.ago)
# Posts
post1 = Post.create(user_id: rosen.id, title: 'Puta', content: 'Te quero puta! Mass Mass Mass por favor. Mass Mass Mass si si senior')
post2 = Post.create(user_id: rosen.id, title: 'Home sweet home!', content: 'Home sweet home. It\'s the place where you can hide from your problems.')
post3 = Post.create(user_id: rosen.id, title: 'JS ensherinka', content: 'Ensherinka tryed to learn js, he understand something, but can understand all what he needed.')
post4 = Post.create(user_id: rosen.id, title: 'KFC Rat-ta-ta!', content: 'Rat was founded in KFC stipces, bon appetit!Te')
# Comments
Comment.create(user_id: rosen.id, post_id: post1.id, content: 'Beautyfull!')
Comment.create(user_id: potato.id, post_id: post1.id, content: 'Epic! Just epic!!!')
Comment.create(user_id: rosen.id, post_id: post2.id, content: 'Das ist mein teil...')
Comment.create(user_id: potato.id, post_id: post2.id, content: 'Epic! Just epic!!!')
Comment.create(user_id: potato.id, post_id: post2.id, content: '@#!@#@!#@!#@!#@!#@#@!@!#@!#')
Comment.create(user_id: rosen.id, post_id: post3.id, content: 'Unbelievable!')
Comment.create(user_id: potato.id, post_id: post3.id, content: 'Unbelievable!')
Comment.create(user_id: potato.id, post_id: post4.id, content: 'Unbelievable!')
Comment.create(user_id: potato.id, post_id: post4.id, content: 'Sh*t material. Unfollow!')
