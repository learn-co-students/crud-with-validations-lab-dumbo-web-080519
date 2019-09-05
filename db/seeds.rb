Song.destroy_all

song1 = Song.new(title: "Song", artist_name: "Me", genre: "Rock", released: true, release_year: 1998)
song2 = Song.new(title: "This", artist_name: "You", genre: "Classic", released: false)
song3 = Song.new(title: "Cool", artist_name: "Guy", genre: "Jazz", released: true, release_year: 2019)
song4 = Song.new(title: "Good", artist_name: "Dude", released: false)

song1.save
song2.save
song3.save
song4.save


byebug

0
