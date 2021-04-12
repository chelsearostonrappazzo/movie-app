Genre.create!([
  { name: "Historical Drama" },
  { name: "Musical" },
  { name: "Romance" },
  { name: "Fantasy" },
])
Actor.create!([
  { first_name: "Nathan", last_name: "Fillion", known_for: "Firefly", gender: "M", age: 49, movie_id: nil },
  { first_name: "Brendan", last_name: "Fraser", known_for: "The Mummy", gender: "M", age: 52, movie_id: 2 },
  { first_name: "Gugu", last_name: "Mbatha-Raw", known_for: "Belle", gender: "F", age: 37, movie_id: 3 },
])
Movie.create!([
  { title: "Moulin Rouge", year: 2001, plot: "A blissfully ignorant Englishman does what his ilk does best and travels to a foreign country and falls in love with a courtesan and tries to change her. Potential murder ensues.", director: "Baz Luhrmann", english: true, image: "https://m.media-amazon.com/images/M/MV5BMWFhYjliNjYtYjNhNS00OGExLWFhMjQtNDgwOWYyNWJiYzhmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg" },
  { title: "The Mummy", year: 1999, plot: "Librarian Evelyn Carnahan enlists the help of soon-to-be-hanged Rick O'Connell to help her find the book of the dead. unfortunately, everyone wants it. A thousand year old mummy only makes matters worse.", director: "Stephen Summers", english: true, image: "https://images-na.ssl-images-amazon.com/images/I/71BcU6xbdNL._AC_SL1346_.jpg" },
  { title: "Elizabeth", year: 1998, plot: "After becoming queen on England, Elizabeth learns, to her great disappointment, that there are, in fact, worse dangers than her barren Catholic sister.", director: "Shekhar Kapur", english: true, image: "https://images-na.ssl-images-amazon.com/images/I/51v6uWHww8L._AC_.jpg" },
  { title: "Belle", year: 2014, plot: "Dido Elizabeth Belle lives in 18th century England in a wealthy household as an illegtimate mixed-race daughter of a British admiral. Casual racism ensues. But she gets a white man in the end.", director: "Amma Asante", english: true, image: "https://images-na.ssl-images-amazon.com/images/I/71wvpJcXB3L._AC_SY679_.jpg" },
  { title: "Howl's Moving Castle", year: 2005, plot: "Hat maker Sophia gets turned into an old woman by the Witch of the Wastes. She stumbles upon a moving castle in the wastes when she tries to escape her old life. Here she meets a demon, a wizard, and an apprentice.", director: "Hayao Miyazaki", english: false, image: "https://images-na.ssl-images-amazon.com/images/I/91r6ErURNeL._SL1500_.jpg" },
])
Comment.create!([
  { user_id: 2, comment: "Always makes me squee!", movie_id: 1 },
  { user_id: 2, comment: "Love this movie!", movie_id: 2 },
  { user_id: 1, comment: "No one acts like this!!", movie_id: 1 },
])
MovieGenre.create!([
  { genre_id: 1, movie_id: 2 },
  { genre_id: 1, movie_id: 3 },
  { genre_id: 1, movie_id: 4 },
  { genre_id: 1, movie_id: 5 },
  { genre_id: 2, movie_id: 5 },
  { genre_id: 3, movie_id: 1 },
  { genre_id: 3, movie_id: 2 },
  { genre_id: 3, movie_id: 3 },
  { genre_id: 3, movie_id: 5 },
  { genre_id: 4, movie_id: 1 },
  { genre_id: 4, movie_id: 2 },
])
User.create!([
  { name: "Alastair Theirin", email: "blighthimbo@example.com", password_digest: "$2a$12$DAD7VE101fbLvaXquDzs.uKyb8TlTtuUdpouvW7.X2NeYIfPQMcXi", admin: false },
  { name: "Marian Hawke", email: "championofkirkwall@example.com", password_digest: "$2a$12$myOoDZooucMLiJMEdVsT/u.yHhETomjaxOvqfXP2kjew/.u/4uCm2", admin: false },
  { name: "Solona Amell", email: "circlemage5ever@example.com", password_digest: "$2a$12$16jlM5k4VXaudn5oBhsKqePO4cJD5mM1TujwchKeNC2yrImGEmlAi", admin: true },
  { name: "Eleanor Trevelyan", email: "HeraldofAndraste@skyhold.org", password_digest: "$2a$12$Jx.vUG8QqMcgvqlsaLcp3et/ostd90.l.rL02/KUJh5tvximINMta", admin: false },
])

Comment.create(movie_id: 1, user_id: 2, comment: "Always makes me squee!")
Comment.create(movie_id: 2, user_id: 2, comment: "Love this movie!")
Comment.create(movie_id: 1, user_id: 1, comment: "No one acts like this!!")

Actor.create({ first_name: "Henry", last_name: "Cavill", known_for: "The Witcher", gender: "M", age: 37 })
Actor.create({ first_name: "Robert", last_name: "Pattinson", known_for: "Twilight", gender: "M", age: 34 })
