# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
picture_array = [['https://i.imgur.com/xsHi1wL.jpg', 'https://i.imgur.com/xsHi1wLb.jpg'],
                 ['https://i.imgur.com/QRJIKEg.jpg', 'https://i.imgur.com/QRJIKEgb.jpg'],
                 ['https://i.imgur.com/F4sTzdX.jpg', 'https://i.imgur.com/F4sTzdXb.jpg'],
                 ['https://i.imgur.com/RV7Jpwi.jpg?1', 'https://i.imgur.com/RV7Jpwib.jpg?1'],
                 ['https://i.imgur.com/kpLLrz6.jpg', 'https://i.imgur.com/kpLLrz6b.jpg'],
                 ['https://i.imgur.com/Kvq1Y0K.jpg', 'https://i.imgur.com/Kvq1Y0Kb.jpg'],
                 ['https://i.imgur.com/X7qCbC0.jpg?1', 'https://i.imgur.com/X7qCbC0b.jpg?1'],
                 ['https://i.imgur.com/XSX7mtF.jpg', 'https://i.imgur.com/XSX7mtFb.jpg'],
                 ['https://i.imgur.com/jOWZqox.jpg', 'https://i.imgur.com/jOWZqoxb.jpg'],
                 ['https://i.imgur.com/4IwpAiL.jpg', 'https://i.imgur.com/4IwpAiLb.jpg'],
                 ['https://i.imgur.com/1Pu6hzt.jpg', 'https://i.imgur.com/1Pu6hztb.jpg'],
                 ['https://i.imgur.com/jTu7q2Y.jpg?1', 'https://i.imgur.com/jTu7q2Yb.jpg?1'],
                 ['https://i.imgur.com/sJ6eeoo.jpg?1', 'https://i.imgur.com/sJ6eeoob.jpg?1'],
                 ['https://i.imgur.com/JenT3rf.jpg', 'https://i.imgur.com/JenT3rfb.jpg'],
                 ['https://i.imgur.com/P5A4RGq.jpg', 'https://i.imgur.com/P5A4RGqb.jpg'],
                 ['https://i.imgur.com/yGrdpxa.jpg', 'https://i.imgur.com/yGrdpxab.jpg'],
                 ['https://i.imgur.com/imavQbC.jpg', 'https://i.imgur.com/imavQbCb.jpg'],
                 ['https://i.imgur.com/wcwoUFS.jpg', 'https://i.imgur.com/wcwoUFSb.jpg'],
                 ['https://i.imgur.com/jcr6waz.jpg', 'https://i.imgur.com/jcr6wazb.jpg'],
                 ['https://i.imgur.com/btbKtny.jpg', 'https://i.imgur.com/btbKtnyb.jpg']]

caption_array = ['What do you guys think?',
                 "I've never seen anything like this!",
                 'Can you believe it?',
                 'Awesome!',
                 'This one is the coolest.',
                 'No place like Miami!',
                 'This piece really speaks to me.',
                 'Inspiring!']

# Picture.create([{ url: 'http://www.dailyherald.com/storyimage/DA/20110724/entlife/707249979/AR/0/AR-707249979.jpg&updated=201107241250&MaxW=800&maxH=800&noborder',
#                   caption: 'Sweet pic!',
#                   rating: 4,
#                   location: '299 NW 27th Terrace Miami Florida' },
#                 { url: 'https://cdn.vox-cdn.com/thumbor/LBx-fZEtigqICpLxtnJVdMe2HqE=/0x0:1496x1112/920x613/filters:focal(445x396:683x634):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/50524581/Screen_20Shot_202016-08-25_20at_201.00.22_20PM.0.png',
#                   caption: 'Super sweet pic!',
#                   rating: 3,
#                   location: 'Wynwood Walls' }])

50.times do
  picture = picture_array.sample
  Picture.create(
    url: picture[0],
    thumbnail: picture[1],
    caption: caption_array.sample,
    rating: (1..5).to_a.sample,
    location: '199 NW 25th St Miami Florida'
  )
end

200.times do
  Review.create(
    description: ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    author: %w[Steve Will Mary Laurie Dan Kim Matt Patrick Asger].sample,
    rating: (1..5).to_a.sample,
    picture_id: (1..50).to_a.sample
  )
end
