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
rosen = User.create(name:'Rosenroot', email:'Rosenroot@rosenroot.by', password: 'rosenroot', password_confirmation: 'rosenroot', confirmed_at: 1.days.ago)
potato = User.create(name:'Potato Sqr', email:'Potato@gmail.com', password: 'potato', password_confirmation: 'potato', confirmed_at: 2.days.ago, created_at: 3.days.ago)

# Categories
category1 = Category.create(name: 'English')
category2 = Category.create(name: 'Programming')
category3 = Category.create(name: 'Food')
category4 = Category.create(name: 'Music')
category5 = Category.create(name: 'Sport')
category6 = Category.create(name: 'Games')
category7 = Category.create(name: 'Nature')
category8 = Category.create(name: 'PC')

# Posts
post1 = Post.create(user_id: rosen.id, category_ids: [category1.id, category2.id], title: 'Puta', content: 'Te quero puta! Mass Mass Mass por favor. Mass Mass Mass si si senior')
post2 = Post.create(user_id: rosen.id, category_ids: [category1.id, category5.id], title: 'Home sweet home!', content: 'Home sweet home. It\'s the place where you can hide from your problems.')
post3 = Post.create(user_id: potato.id, category_ids: [category3.id, category7.id], title: 'Java ensherinka', content: 'Ensherinka tryed to learn java, he understand something, but can understand all what he needed.')
post4 = Post.create(user_id: rosen.id, category_ids: [category2.id, category8.id], title: 'KFC Rat-ta-ta!', content: 'Rat was founded in KFC stipces, bon appetit!Te')
post5 = Post.create(user_id: potato.id, title: 'rm -fr', content: 'Best joke from windows users')
post6 = Post.create(user_id: rosen.id, title: 'Argentina 5-0', content: 'Best goal!!! Pooper dooper.')
post7 = Post.create(user_id: potato.id, category_ids: [category1.id, category3.id], title: 'Daun ensherinka', content: 'Ensherinka daun.')
post8 = Post.create(user_id: rosen.id, title: 'BK burger king', content: 'BK dishes - so deliciuos...!')
post9 = Post.create(user_id: rosen.id, title: 'Puta', content: 'Te quero puta! Mass Mass Mass por favor. Mass Mass Mass si si senior')
post10 = Post.create(user_id: potato.id, category_ids: [category1.id, category8.id], title: 'TENACTIOUS D', content: 'RISE OF THE FENIX')
post11 = Post.create(user_id: potato.id, title: 'Tycus Findley', content: 'HELL it\'s about time!')
post12 = Post.create(user_id: rosen.id, category_ids: [category1.id, category4.id], title: 'League of legends new client', content: 'Two days ago they gave me invite to alpha client. It looks great, nice colors, but it has some bugs.')
post13 = Post.create(user_id: potato.id, title: 'Linux ls command', content: 'ls - list directory contents!')
post14 = Post.create(user_id: rosen.id, category_ids: [category2.id, category6.id], title: 'Zipper Vipper', content: 'Feature, bugs, optinions, hoohers')
post15 = Post.create(user_id: potato.id, title: 'The f*cking show must go on', content: 'It is 3 p.m. time to lug the gage?')
post16 = Post.create(user_id: rosen.id, category_ids: [category7.id, category8.id], title: 'MC MacDonalds', content: 'MC dishes - so deliciuos...!')
post17 = Post.create(user_id: rosen.id, title: 'Puta', content: 'Te quero puta! Mass Mass Mass por favor. Mass Mass Mass si si senior')
post18 = Post.create(user_id: rosen.id, category_ids: [category2.id, category3.id], title: 'Home sweet home!', content: 'Home sweet home. It\'s the place where you can hide from your problems.')
post19 = Post.create(user_id: potato.id, title: 'Java ensherinka', content: 'Ensherinka tryed to learn java, he understand something, but can understand all what he needed.')
post20 = Post.create(user_id: rosen.id, title: 'KFC Rat-ta-ta!', content: 'Rat was founded in KFC stipces, bon appetit!Te')
post21 = Post.create(user_id: potato.id, category_ids: [category1.id, category7.id], title: 'rm -fr', content: 'Best joke from windows users')
post22 = Post.create(user_id: rosen.id, title: 'Argentina 5-5', content: 'Best goal!!! Pooper dooper.')
post23 = Post.create(user_id: potato.id, title: 'Daun ensherinka', content: 'Ensherinka daun.')
post24 = Post.create(user_id: rosen.id, category_ids: [category2.id, category6.id], title: 'BK bobber klass', content: 'boro bini qiwi...!')
post25 = Post.create(user_id: rosen.id, title: 'Puta te quero dicla', content: 'si senior')
post26 = Post.create(user_id: potato.id, category_ids: [category2.id, category4.id], title: 'United Union Uber', content: 'RISE')
post27 = Post.create(user_id: rosen.id, title: 'PErrinel jibba', content: 'Te amigo puetro')
post28 = Post.create(user_id: rosen.id, category_ids: [category5.id, category6.id], title: 'Home From The Hell', content: 'Sweet baby sweet.')
post29 = Post.create(user_id: potato.id, title: 'Java ensherinka', content: 'Ensherinka tryed to learn java, he understand something, but can understand all what he needed.')
post30 = Post.create(user_id: rosen.id, title: 'KFC Rat-ta-ta!', content: 'Rat was founded in KFC stipces, bon appetit!Te')
post31 = Post.create(user_id: potato.id, title: 'rm -fr', content: 'Best joke from windows users')
post32 = Post.create(user_id: rosen.id, category_ids: [category1.id, category3.id], title: 'Argentina 5-0', content: 'Best goal!!! Pooper dooper.')
post33 = Post.create(user_id: potato.id, title: 'Daun ensherinka', content: 'Ensherinka daun.')
post34 = Post.create(user_id: rosen.id, category_ids: [category3.id, category4.id], title: 'BK burger king', content: 'BK dishes - so deliciuos...!')
post35 = Post.create(user_id: rosen.id, category_ids: [category5.id, category6.id], title: 'Kennedy', content: 'John')
post36 = Post.create(user_id: potato.id, category_ids: [category1.id, category6.id], title: 'I don\'t wanna be bureed', content: 'Pet samatry')

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
Comment.create(user_id: rosen.id, post_id: post10.id, content: 'Beautyfull!')
Comment.create(user_id: potato.id, post_id: post7.id, content: 'Epic! Just epic!!!')
Comment.create(user_id: rosen.id, post_id: post8.id, content: 'Das ist mein teil...')
Comment.create(user_id: potato.id, post_id: post9.id, content: 'Epic! Just epic!!!')
Comment.create(user_id: potato.id, post_id: post12.id, content: '@#!@#@!#@!#@!#@!#@#@!@!#@!#')
Comment.create(user_id: rosen.id, post_id: post16.id, content: 'Unbelievable!')
Comment.create(user_id: potato.id, post_id: post8.id, content: 'Unbelievable!')
Comment.create(user_id: potato.id, post_id: post11.id, content: 'Unbelievable!')
Comment.create(user_id: rosen.id, post_id: post9.id, content: 'Beautyfull!')
Comment.create(user_id: potato.id, post_id: post13.id, content: 'Epic! Just epic!!!')
Comment.create(user_id: rosen.id, post_id: post14.id, content: 'Das ist mein teil...')
Comment.create(user_id: potato.id, post_id: post15.id, content: 'Epic! Just epic!!!')
