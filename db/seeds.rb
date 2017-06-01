AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Book.create(
  id: 1,
  title: "The Selection",
  description: "For thirty-five girls, the Selection is the chance of a lifetime. 
  The opportunity to escape the life laid out for them since birth. To be swept 
  up in a world of glittering gowns and priceless jewels. To live in a palace and 
  compete for the heart of gorgeous Prince Maxon. But for America Singer, being 
  Selected is a nightmare. It means turning her back on her secret love with Aspen,
  who is a caste below her. Leaving her home to enter a fierce competition for a 
  crown she doesn't want. Living in a palace that is constantly threatened by violent 
  rebel attacks. Then America meets Prince Maxon. Gradually, she starts to question 
  all the plans she's made for herself—and realizes that the life she's always dreamed 
  of may not compare to a future she never imagined.",
  isbn: "0062059939",
  cover: Rack::Test::UploadedFile.new(Rails.root.join('app', 'assets', 'images', 'the_selection.jpg'), 'image/jpg')
)

Book.create(
  id: 2,
  title: "The Elite",
  description: "The Selection began with thirty-five girls. Now with the group 
  narrowed down to the six Elite, the competition to win Prince Maxon's heart 
  is fiercer than ever—and America is still struggling to decide where her 
  heart truly lies. Is it with Maxon, who could make her life a fairy tale? Or 
  with her first love, Aspen? America is desperate for more time. But the rest 
  of the Elite know exactly what they want—and America's chance to choose is 
  about to slip away.",
  isbn: "0062059963",
  cover: Rack::Test::UploadedFile.new(Rails.root.join('app', 'assets', 'images', 'the_elite.jpg'), 'image/jpg')
)

Book.create(
  id: 3,
  title: "The One",
  description: "When she was chosen to compete in the Selection, America never 
  dreamed she would find herself anywhere close to the crown—or to Prince Maxon's 
  heart. But as the end of the competition approaches, and the threats outside 
  the palace walls grow more vicious, America realizes just how much she stands 
  to lose—and how hard she'll have to fight for the future she wants.",
  isbn: "0062059998",
  cover: Rack::Test::UploadedFile.new(Rails.root.join('app', 'assets', 'images', 'the_one.jpg'), 'image/jpg')
)

Book.create(
  id: 4,
  title: "Divergent",
  description: "In Beatrice Prior's dystopian Chicago world, society is divided 
  into five factions, each dedicated to the cultivation of a particular virtue. 
  On an appointed day of every year, all sixteen-year-olds must select the faction 
  to which they will devote the rest of their lives. For Beatrice, the decision is 
  between staying with her family and being who she really is—she can't have both. 
  So she makes a choice that surprises everyone, including herself.",
  isbn: "0062024035",
  cover: Rack::Test::UploadedFile.new(Rails.root.join('app', 'assets', 'images', 'divergent.jpg'), 'image/jpg')
)

Book.create(
  id: 5,
  title: "Insurgent",
  description: "One choice can transform you—or it can destroy you. But every choice 
  has consequences, and as unrest surges in the factions all around her, Tris Prior 
  must continue trying to save those she loves—and herself—while grappling with haunting 
  questions of grief and forgiveness, identity and loyalty, politics and love.",
  isbn: "0007442912",
  cover: Rack::Test::UploadedFile.new(Rails.root.join('app', 'assets', 'images', 'insurgent.jpg'), 'image/jpg')
)

Book.create(
  id: 6,
  title: "Allegiant",
  description: "The faction-based society that Tris Prior once believed in is shattered - 
  fractured by violence and power struggles and scarred by loss and betrayal. So when 
  offered a chance to explore the world past the limits she's known, Tris is ready. 
  Perhaps beyond the fence, she and Tobias will find a simple new life together, free 
  from complicated lies, tangled loyalties, and painful memories.",
  isbn: "0007524277",
  cover: Rack::Test::UploadedFile.new(Rails.root.join('app', 'assets', 'images', 'allegiant.jpg'), 'image/jpg')
)

Book.create(
  id: 7,
  title: "Four: A Divergent Story Collection",
  description: "Two years before Beatrice Prior made her choice, the sixteen-year-old son 
  of Abnegation’s faction leader did the same. Tobias’s transfer to Dauntless is a chance 
  to begin again. Here, he will not be called the name his parents gave him. Here, he will 
  not let fear turn him into a cowering child.",
  isbn: "0062285688",
  cover: Rack::Test::UploadedFile.new(Rails.root.join('app', 'assets', 'images', 'four.jpg'), 'image/jpg')
)

Review.create(
  text: "Super, super, super awesome book!!!",
  book_id: 1,
  rating: 5.0
)

Review.create(
  text: "Are you serious?! Super cheesy! Absolutely unrealistic!!!",
  book_id: 1,
  rating: 0.0
)

Review.create(
  text: "It was OK but I didn't like how Aspen forced her to participate and then risked her 
  life by trying to meet her secretly.",
  book_id: 1,
  rating: 4.0
)

Review.create(
  text: "I loved it! Tugging my ear. ;-)",
  book_id: 1,
  rating: 4.6
)

Review.create(
  text: "My favourite book of all time! ❤",
  book_id: 1,
  rating: 5.0
)

Review.create(
  text: "Oh man! I cried so much over the ending. ;( Such a good book!",
  book_id: 6,
  rating: 5.0
)

Review.create(
  text: "I didn't like the ending! Why did they have to kill her?",
  book_id: 6,
  rating: 2.5
)
