# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# positions: corner, second, runner, middle, shagger
Player.create(name: "Lebron James", number: 23, height: "6'8 in", wingspan: 84, position: "middle", image_url: "https://img.wennermedia.com/article-leads-horizontal/lebron-james-on-race-trump-retirement-cb1f9039-23c4-478a-83e6-2ded5158068c.jpg")
Player.create(name: "Pablo Sanchez", number: 2, height: "3'11 in", wingspan: 40, position: "runner", image_url: "https://i.ytimg.com/vi/zbHFfWbem3k/hqdefault.jpg?sqp=-oaymwEXCPYBEIoBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBf7JcKdDu8PhEt9b3HSZTs7_y2vA")
Player.create(name: "Patches O'Houlihan", number: 100, height: "5'7 in", wingspan: 70, position: "second", image_url: "https://static.esea.net/global/images/users/667319.1485404707.jpg")
Player.create(name: "Tom Brady", number: 12, height: "6'4 in", wingspan: 74, position: "corner", image_url: "https://2.bp.blogspot.com/-d10E9K7ZR1s/UtsBMFbULeI/AAAAAAAACCs/j-mJ1MI08WQ/s640/tom-brady-combine.jpg")
Player.create(name: "Kanye", number: 1, height: "5'8 in", wingspan: 60, position: "shagger", image_url: "http://i.dailymail.co.uk/i/pix/2017/08/19/09/435F42FA00000578-0-image-a-3_1503131841717.jpg")
