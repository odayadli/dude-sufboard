# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'Destroying DB'

User.destroy_all
Surfboard.destroy_all

puts 'Starting seed'

puts 'Seeding users'
file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886870/image_16_dtzeqo.jpg')
user1 = User.create(email: 'juliothedon@gmail.com',
                    password: '123456',
                    username: 'Julio')
user1.profile_pic.attach(io: file, filename: 'owner.jpg', content_type: 'image/jpg')
user1.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886871/image_17_ztojgm.jpg')
user2 = User.create(email: 'mrranieri@gmail.com',
                    password: '123456',
                    username: 'Marie')
user2.profile_pic.attach(io: file, filename: 'owner2.jpg', content_type: 'image/jpg')
user2.save!

file = URI.open('https://images.unsplash.com/photo-1518459031867-a89b944bffe4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1025&q=80.jpg')
user3 = User.create(email: 'hswanson@gmail.com',
                    password: '123456',
                    username: 'Wanson')
user3.profile_pic.attach(io: file, filename: 'owner3.jpg', content_type: 'image/jpg')
user3.save!

file = URI.open('https://images.unsplash.com/photo-1590048531448-abc75e64f28d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80.jpg')
user4 = User.create(email: 'gellery2395@gmail.com',
                    password: '123456',
                    username: 'Gellery')
user4.profile_pic.attach(io: file, filename: 'owner4.jpg', content_type: 'image/jpg')
user4.save!

file = URI.open('https://images.unsplash.com/photo-1533681717801-1bbd2ec8d269?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
user5 = User.create(email: 'robsilva@gmail.com',
                    password: '123456')
user5.profile_pic.attach(io: file, filename: 'owner5.jpg', content_type: 'image/jpg')
user5.save!

file = URI.open('https://images.unsplash.com/photo-1598971862175-e5b46121680a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80.jpg')
user6 = User.create(email: 'mj1@gmail.com',
                    password: '123456',
                    username: 'Mike')
user6.profile_pic.attach(io: file, filename: 'owner6.jpg', content_type: 'image/jpg')
user6.save!

file = URI.open('https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80.jpg')
user7 = User.create(email: 'haroldsmith@gmail.com',
                    password: '123456',
                    username: 'Harold')
user7.profile_pic.attach(io: file, filename: 'owner7.jpg', content_type: 'image/jpg')
user7.save!

file = URI.open('https://images.unsplash.com/photo-1597452494947-f2986526d1be?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80.jpg')
user8 = User.create(email: 'superjones@gmail.com',
                    password: '123456',
                    username: 'Jones')
user8.profile_pic.attach(io: file, filename: 'owner8.jpg', content_type: 'image/jpg')
user8.save!

file = URI.open('https://images.unsplash.com/photo-1532029837206-abbe2b7620e3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80.jpg')
user9 = User.create(email: 'dumblesauce@gmail.com',
                    password: '123456',
                    username: 'Lesauce')
user9.profile_pic.attach(io: file, filename: 'owner9.jpg', content_type: 'image/jpg')
user9.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886871/image_21_ax4aue.jpg')
user10 = User.create(email: 'horcruxes4life@gmail.com',
                     password: '123456',
                     username: 'Mellanie')
user10.profile_pic.attach(io: file, filename: 'owner10.jpg', content_type: 'image/jpg')
user10.save!

file = URI.open('https://images.unsplash.com/photo-1585892478508-130c50eb7a69?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
user11 = User.create(email: 'abbalover@gmail.com',
                     password: '123456',
                     username: 'Abba')

user11.profile_pic.attach(io: file, filename: 'owner11.jpg', content_type: 'image/jpg')
user11.save!

file = URI.open('https://images.unsplash.com/photo-1571019613576-2b22c76fd955?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80.jpg')
user12 = User.create(email: 'alloday@gmail.com',
                     password: '123456',
                     username: 'Oday')

user12.profile_pic.attach(io: file, filename: 'owner12.jpg', content_type: 'image/jpg')
user12.save!

puts 'Seeding surfboards'

file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard = Surfboard.new(
  user: User.find(1),
  name: 'ProX 9000',
  details: 'For Beginners',
  price: '15',
  location: 'London, England, United Kingdom')
surfboard.photo.attach(io: file, filename: 'surfboard.jpg', content_type: 'image/jpg')
# surfboard.user_id =  User.find(1).id
surfboard.save!

file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard1 = Surfboard.new(user: User.find(2),
                           name: 'ProX 3000',
                           details: 'For Beginners/Intermediate',
                           price: '11',
                           location: 'London, England, United Kingdom')
surfboard1.photo.attach(io: file, filename: 'surfboard2.jpg', content_type: 'image/jpg')
surfboard1.save!
#
file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard2 = Surfboard.new(user: User.find(3),
                           name: 'ProX 4000',
                           details: 'For Beginners/Intermediate',
                           price: '13',
                           location: 'London, England, United Kingdom')
surfboard2.photo.attach(io: file, filename: 'surfboard3.jpg', content_type: 'image/jpg')
surfboard2.save!

file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard3 = Surfboard.new(user: User.find(4),
                           name: 'ProX 7000',
                           details: 'For Beginners/Intermediate',
                           price: '9',
                           location: 'London, England, United Kingdom')
surfboard3.photo.attach(io: file, filename: 'surfboard4.jpg', content_type: 'image/jpg')
surfboard3.save!

file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard4 = Surfboard.new(user: User.find(5),
                           name: 'ProX 8000',
                           details: 'For Intermediate',
                           price: '11',
                           location: 'London, England, United Kingdom')
surfboard4.photo.attach(io: file, filename: 'surfboard5.jpg', content_type: 'image/jpg')
surfboard4.save!
#
file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard5 = Surfboard.new(user: User.find(6),
                           name: 'ProX 8500',
                           details: 'For Intermediate',
                           price: '15',
                           location: 'London, England, United Kingdom')
surfboard5.photo.attach(io: file, filename: 'surfboard6.jpg', content_type: 'image/jpg')
surfboard5.save!

file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard6 = Surfboard.new(user: User.find(7),
                           name: 'ProX 500',
                           details: 'For Pro only',
                           price: '10',
                           location: 'London, England, United Kingdom')
surfboard6.photo.attach(io: file, filename: 'surfboard7.jpg', content_type: 'image/jpg')
surfboard6.save!

file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard7 = Surfboard.new(user: User.find(8),
                           name: 'ProX 2000',
                           details: 'For Intermediate',
                           price: '12',
                           location: 'London, England, United Kingdom')
surfboard7.photo.attach(io: file, filename: 'surfboard8.jpg', content_type: 'image/jpg')
surfboard7.save!

file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard8 = Surfboard.new(user: User.find(9),
                           name: 'ProX 400',
                           details: 'For Intermediate',
                           price: '16',
                           location: 'London, England, United Kingdom')
surfboard8.photo.attach(io: file, filename: 'surfboard9.jpg', content_type: 'image/jpg')
surfboard8.save!

file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard9 = Surfboard.new(user: User.find(10),
                           name: 'Nexus 8',
                           details: 'For Intermediate',
                           price: '17',
                           location: 'London, England, United Kingdom')
surfboard9.photo.attach(io: file, filename: 'surfboard10.jpg', content_type: 'image/jpg')
surfboard9.save!

file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard10 = Surfboard.new(user: User.find(11),
                            name: 'Magnum 8',
                            details: 'For Intermediate',
                            price: '8',
                            location: 'London, England, United Kingdom')
surfboard10.photo.attach(io: file, filename: 'surfboard11.jpg', content_type: 'image/jpg')
surfboard10.save!

file = URI.open('https://res.cloudinary.com/dhj0qswpc/image/upload/v1613696184/znx6kw86egii1c0be0jx8ul75vr5.jpg')
surfboard11 = Surfboard.new(user: User.find(12),
                            name: 'Xerox 200',
                            details: 'For Intermediate',
                            price: '19',
                            location: 'London, England, United Kingdom')
surfboard11.photo.attach(io: file, filename: 'surfboard12.jpg', content_type: 'image/jpg')
surfboard11.save!

puts 'Seed finalised'

# surfboard = Surfboard.new(user: user4, name: category4, details: 'Come and join me', price: '12', service_address: 'Birmingham, England, United Kingdom')
# service.save!

# service = Service.new(user: user5, category: category5, details: 'Come and join me', price_per_hour: '10', service_address: 'Manchester, England, United Kingdom')
# service.save!

# service = Service.new(trainer: user6, category: category6, details: 'Come and join me', price_per_hour: '20', service_address: 'Leeds, England, United Kingdom')
# service.save!

# service = Service.new(trainer: user7, category: category7, details: 'Come and join me', price_per_hour: '25', service_address: 'Harlow, England, United Kingdom')
# service.save!
