# RANKINGS
Ranking.find_or_create_by(name: "Rookie", level: 1)
Ranking.find_or_create_by(name: "Underdog", level: 2)
Ranking.find_or_create_by(name: "Average Joe", level: 3)
Ranking.find_or_create_by(name: "Wrench Dodger", level: 4)
Ranking.find_or_create_by(name: "Dodgeball Legend", level: 5)

# Players
# positions: corner, second, runner, middle, shagger
# Middles
Player.create(name: "Lebron James", number: 23, height: "6'8 in", wingspan: 84, position: "middle", image_url: "https://img.wennermedia.com/article-leads-horizontal/lebron-james-on-race-trump-retirement-cb1f9039-23c4-478a-83e6-2ded5158068c.jpg")
Player.create(name: "Peter La Fleur", number: 2, height: "5'11 in", wingspan: 70, position: "middle", image_url: "https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/p-dodgeball-a-true-underdog-story-vince-vaughn.jpg")
Player.create(name: "Serena Williams", number: 1, height: "5' 9 in", wingspan: 69, position: "middle", image_url: "https://cdn.images.express.co.uk/img/dynamic/72/590x/Serena-Williams-Australian-Open-889667.jpg")
Player.create(name: "Ronda Rousey", number: 2, height: "5' 7 in", wingspan: 66, position: "middle", image_url: "http://www.mma.tv/wp-content/uploads/2017/02/ronda.png")
Player.create(name: "Hermione Granger", number: 12, height: "5' 4 in", wingspan: 62, position: "middle", image_url: "https://vignette.wikia.nocookie.net/harrypotter/images/4/41/Hermionedhface.jpg/revision/latest/scale-to-width-down/350?cb=20161221044857")
Player.create(name: "Daenerys Targaryen", number: 5, height: "5' 3 in", wingspan: 60, position: "middle", image_url: "https://images-eu.ssl-images-amazon.com/images/I/7159Onk2x8L._SY450_.jpg")
Player.create(name: "TJ Lavin", number: 4, height: "6' 0 in", wingspan: 70, position: "middle", image_url: "http://live.drjays.com/wp-content/uploads/2010/10/9B3D66FF-1A74-4CDF-9AFF-EA9F68D4DFBB.jpg")
# Runners
Player.create(name: "Pablo Sanchez", number: 2, height: "3'11 in", wingspan: 40, position: "runner", image_url: "https://static.esea.net/global/images/users/667319.1485404707.jpg")
Player.create(name: "Otto Rocket", number: 11, height: "4'11 in", wingspan: 52, position: "runner", image_url: "https://vignette.wikia.nocookie.net/nickelodeon/images/0/00/Otto_Rocket.png/revision/latest?cb=20160403064600")
Player.create(name: "Mia Hamm", number: 9, height: "5' 5 in", wingspan: 63, position: "runner", image_url: "https://myhero.com/images/guest/g258832/hero85424/Mia%20Hamm.jpg")
Player.create(name: "Taylor Swift", number: 89, height: "5' 10 in", wingspan: 70, position: "runner", image_url: "http://www.mtv.co.uk/sites/default/files/styles/vimn_image_embed/public/mtv_uk/articles/2017/11/01/taylor-swift-gorgeous.jpg?itok=f6J_sQxX")
Player.create(name: "Michelle Kwan", number: 33, height: "5' 2 in", wingspan: 62, position: "runner", image_url: "https://media.wmagazine.com/photos/59fa1920dc28fc0a7c47aea8/master/w_320,c_limit/GettyImages-1576234.jpg")
Player.create(name: "Tommy Wiseau", number: 20, height: "5' 10 in", wingspan: 66, position: "runner", image_url: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Fpeopledotcom.files.wordpress.com%2F2017%2F11%2Ftommy-wiseau.jpg%3Fw%3D450&w=700&q=85")
# Seconds
Player.create(name: "Patches O'Houlihan", number: 100, height: "5'7 in", wingspan: 70, position: "second", image_url: "https://i.ytimg.com/vi/zbHFfWbem3k/hqdefault.jpg?sqp=-oaymwEXCPYBEIoBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBf7JcKdDu8PhEt9b3HSZTs7_y2vA")
Player.create(name: "Steph Curry", number: 30, height: "6'3 in", wingspan: 72, position: "second", image_url: "http://media.breitbart.com/media/2017/11/stephen-curry-ap-photo-640x480.png")
Player.create(name: "Michael Jordan", number: 23, height: "6'7 in", wingspan: 72, position: "second", image_url: "https://c1.staticflickr.com/9/8119/8645746456_9a1f13acca_z.jpg")
Player.create(name: "White Goodman", number: 19, height: "5' 5 in", wingspan: 64, position: "second", image_url: "https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/p-dodgeball-a-true-underdog-story-ben-stiller.jpg")
Player.create(name: "Kenny Kawaguchi", number: 14, height: "3' 8 in", wingspan: 40, position: "second", image_url: "https://vignette.wikia.nocookie.net/humongous/images/c/c2/BYS_Kenny.png/revision/latest?cb=20110601165036")
Player.create(name: "Nicolas Cage", number: 44, height: "5' 11 in", wingspan: 70, position: "second", image_url: "https://img.buzzfeed.com/buzzfeed-static/static/2014-01/campaign_images/webdr06/7/14/50-reasons-why-nicolas-cage-is-the-greatest-human-1-5571-1389124720-1_big.jpg")
Player.create(name: "Tony Hawk", number: 6, height: "6' 3 in", wingspan: 74, position: "second", image_url: "https://www.nassfestival.com/images/uploads/tonyhawkfrontsideair_bart_jones.jpg")
# Corners
Player.create(name: "Tom Brady", number: 12, height: "6'4 in", wingspan: 74, position: "corner", image_url: "https://2.bp.blogspot.com/-d10E9K7ZR1s/UtsBMFbULeI/AAAAAAAACCs/j-mJ1MI08WQ/s640/tom-brady-combine.jpg")
Player.create(name: "CC Sabathia", number: 52, height: "6'6 in", wingspan: 74, position: "corner", image_url: "http://a.espncdn.com/photo/2017/0901/r251943_600x400_3-2.jpg")
Player.create(name: "Helga Pataki", number: 9, height: "4' 2 in", wingspan: 50, position: "corner", image_url: "https://vignette.wikia.nocookie.net/nickelodeon/images/3/3f/59e9047ad075f61c85524314.png/revision/latest?cb=20171107231515")
Player.create(name: "Cam Newton", number: 1, height: "6' 5 in", wingspan: 77, position: "corner", image_url: "https://media.golfdigest.com/photos/5a008660c979d54140edbecf/master/w_768,c_limit/GettyImages-870626736.jpg")
Player.create(name: "Russell Westbrook", number: 0, height: "6' 3 in", wingspan: 84, position: "corner", image_url: "https://www.thewrap.com/wp-content/uploads/2017/06/Russell-Westbrook.jpg")
Player.create(name: "Gary Busey", number: 67, height: "6' 0 in", wingspan: 70, position: "corner", image_url: "http://static.tvtropes.org/pmwiki/pub/images/gary_busey.jpg")

# Shaggers
Player.create(name: "Mr. Krabs", number: 4, height: "2'1 in", wingspan: 24, position: "shagger", image_url: "https://upload.wikimedia.org/wikipedia/en/6/63/MrKrabs.png")
Player.create(name: "Kanye", number: 0, height: "5' 8 in", wingspan: 60, position: "shagger", image_url: "http://i.dailymail.co.uk/i/pix/2017/08/19/09/435F42FA00000578-0-image-a-3_1503131841717.jpg")
Player.create(name: "Steve the Pirate", number: 4, height: "5' 10 in", wingspan: 70, position: "shagger", image_url: "https://filmreviewlondon.files.wordpress.com/2011/07/stevethepirate-1.jpg")
Player.create(name: "Guy Fieri", number: 6, height: "5' 10 in", wingspan: 68, position: "shagger", image_url: "https://media.salon.com/2014/08/guy_fieri.jpg")
Player.create(name: "Air Bud", number: 3, height: "3' 0 in", wingspan: 30, position: "shagger", image_url: "https://pbs.twimg.com/media/DUWQSy7UQAAkI0V.jpg")
Player.create(name: "Paul Blart, Mall Cop", number: 29, height: "5' 7 in", wingspan: 65, position: "shagger", image_url: "http://www.wingclips.com/system/movie-clips/paul-blart-mall-cop/sworn-oath/images/paul-blart-mall-cop-movie-clip-screenshot-sworn-oath_large.jpg")
# LEAGUES
League.create(name: "Average Joes")
League.create(name: "Globo Gym")
