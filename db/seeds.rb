puts "Removing all locations from the DB..."
Location.destroy_all

puts "Seeding locations..."

locations = [
  {
    title: 'Suga Shrine Steps',
    address: '5-6 Sugacho, Shinjuku City, Tokyo 160-0018',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/15s-1024x576.png',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/rs.jpg',
    criteria: ['Your Name', 'Tokyo']
  },
  {
    title: 'Yotsuya Station',
    address: '1 Chome Yotsuya, Shinjuku City, Tokyo 160-0004',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/Screen-Shot-2019-11-25-at-15.41.57.png',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/Screen-Shot-2019-11-25-at-15.42.19.png',
    criteria: ['Your Name', 'Tokyo']
  },
  {
    title: 'Cafe La Boheme',
    address: '160-0022 Tokyo, Shinjuku City, Shinjuku, 1 Chome-1-7',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/20180222202509.jpg',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/img_8908-1.jpg',
    criteria: ['Your Name', 'Tokyo']
  },
  {
    title: 'Yunika Vision',
    address: '3 Chome-23-7 Shinjuku, Shinjuku City, Tokyo 160-0022',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/1-e1501934064482.png',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/CqxVMqsWEAALlfy-1024x576.jpg',
    criteria: ['Your Name', 'Tokyo']
  },
  {
    title: 'Shintoshin Pedestrian Bridge',
    address: '3 Chome-23-7 Shinjuku, Shinjuku City, Tokyo 160-0022',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/Screen-Shot-2019-11-25-at-16.23.35.png',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/Screen-Shot-2019-11-25-at-16.23.26.png',
    criteria: ['Your Name', 'Tokyo']
  },
  {
    title: 'Roppongi Hills',
    address: '6 Chome-10-1 Roppongi, Minato City, Tokyo 106-6108',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/Screen-Shot-2019-11-25-at-15.17.10.png',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/IMG_8751-1024x782.jpg',
    criteria: ['Your Name', 'Tokyo']
  },
  {
    title: 'The National Art Center',
    address: '7 Chome-22-2 Roppongi, Minato City, Tokyo 106-8558',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/Screen-Shot-2019-11-25-at-16.08.04.png',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/2018_National_Art_Center_Tokyo_4-1024x686.jpg',
    criteria: ['Your Name', 'Tokyo']
  },
  {
    title: 'Yoyogi Kaikan',
    address: '3 Chome-3 Yoyogi, Shibuya City, 151-0053',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/news190718movie-01a.jpg',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/006-yoyogi-kaikan.jpg',
    criteria: ['Weathering with You', 'Tokyo']
  },
  {
    title: 'Asahi Inari Shrine',
    address: '104-0061 Tokyo, Chuo City, Ginza, 3 Chome-8-12',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/1b54cebd1aa2300944dc21a06cd1ede8.png',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/yoyogi-tenki-noko-3.jpg',
    criteria: ['Weathering with You', 'Tokyo']
  },
  {
    title: 'Koenji Hikawa Shrine',
    address: '4 Chome-44-19 Koenjiminami, Suginami City, Tokyo 166-0003',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/tenkinoko2-800x378.jpg',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/kisho17.jpg',
    criteria: ['Weathering with You', 'Tokyo']
  },
  {
    title: 'Nozoki Hill',
    address: '2 Chome-12-21 Takada, Toshima City, Tokyo 171-0033',
    picture: 'https://japantour.xyz/wp-content/uploads/2019/11/Screen-Shot-2019-11-27-at-13.30.29-1024x478.png',
    photo: 'https://japantour.xyz/wp-content/uploads/2019/11/Screen-Shot-2019-11-27-at-13.31.44-1024x572.png',
    criteria: ['Weathering with You', 'Tokyo']
  }
]

locations.each do |location_hash|
  puts "Creating #{location_hash[:title]}..."
  Location.create!(
    title: location_hash[:title],
    address: location_hash[:address],
    picture: location_hash[:picture],
    photo: location_hash[:photo],
    criteria: location_hash[:criteria]
  )
end

puts "... created #{Location.count} locations!"
