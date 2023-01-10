# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "Destroying database"
Book.destroy_all
User.destroy_all
Review.destroy_all
puts "Database Destroyed"

User.create(username:"paigetetz", password:"1234", 
profile_pic:"http://cdn.akc.org/content/article-body-image/siberian_husky_cute_puppies.jpg", fav_book: "The Book Theif", fav_genre: "Mystery")
User.create(username:"ohheycerimay", password:"1234", 
profile_pic:"https://i0.wp.com/bkreader.com/wp-content/uploads/2014/04/g-train.jpg?fit=500%2C380&ssl=1" fav_book: "Twlight", fav_genre: "YA")
User.create(username:"tobytown", password:"1234", 
profile_pic:"https://scontent-ord5-2.xx.fbcdn.net/v/t1.6435-9/69651319_10157171557082199_8810918459039809536_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=jO-M6xmJJyMAX9vara7&_nc_ht=scontent-ord5-2.xx&oh=00_AfAYNtFqoXjYtizXxCayHvpNFO-dssvCL6oTuuTC4FLDEg&oe=63E3FE9E"
fav_book: "Metamorphasis", fav_genre: "Thriller")

15 times do 
    User.create(
        username: Faker::Internet.user_name,
        password_digest: 1234,
        profile_pic: Faker::Avatar.image,
        fav_book: Faker::Book.title,
        fav_genre: Faker::Book.genre

    )
end

80 times do 
    Review.create(
        user_id: User.all.sample.id,
        book_id: Book.all.sample.id,
        headline: Faker::Quote.famous_last_words,
        commentary: Faker::Lorem.paragraph,
        rating: rand(1..5)
        likes: rand(1...30)

    )
end

Book.create(title: "Around the World in Eighty Days", author: "Jules Verne", summary: "One night in the reform club, Phileas Fogg bets his companions that he can travel across the globe in just eighty days. Breaking the well-established routine of his daily life, he immediately sets off for Dover with his astonished valet Passepartout. Passing through exotic lands and dangerous locations, they seize whatever transportation is at hand whether train or elephant overcoming set-backs and always racing against the clock.", page_count: , genre:"Adventure", published:"1872", rating:, image:"https://images4.penguinrandomhouse.com/cover/9780241468654")
Book.create(title: "The Adventures of Sherlock Holmes", author: "Sir Arthur Conan Doyle", summary: "This gripping collection includes many of the famous cases-and great strokes of brilliance-that made the legendary Sherlock Holmes one of fiction's most popular creations. With his devoted secretary, Dr. Watson, Holmes emerges from his smoke-filled rooms on Baker Street to grapple with the forces of treachery, intrigue, and evil in such cases as “The Speckled Band,” in which a terrified woman begs Holmes and Watson's help in solving the mystery surrounding her sister's death, and “A Scandal in Bohemia,” which portrays a European king blackmailed by his mistress. A spine-tingling treat for anyone who loves a classic whodunit, The Adventures of Sherlock Holmes shows the inimitable detective at his best.", page_count: 389 , genre:"Mystery", published:"1892", rating:, image:"https://images1.penguinrandomhouse.com/cover/9780241347782")
Book.create(title: "Don Quixote", author: "Miguel De Cervantes Saavedra", summary: "Don Quixote has become so entranced reading tales of chivalry that he decides to turn knight errant himself. In the company of his faithful squire, Sancho Panza, these exploits blossom in all sorts of wonderful ways. While Quixote's fancy often leads him astray he tilts at windmills, imagining them to be giants Sancho acquires cunning and a certain sagacity. Sane madman and wise fool, they roam the world together-and together they have haunted reader's imaginations for nearly four hundred years. With its experimental form and literary playfulness, Don Quixote has been generally recognized as the first modern novel. This Penguin Classics edition includes John Rutherfords masterly translation, which does full justice to the energy and wit of Cervantes's prose.", page_count:1056 , genre:"Epic Fantasy", published:"1605", rating:, image:"https://images3.penguinrandomhouse.com/cover/9780241347768")

Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")
Book.create(title: "", author: "", summary: "", page_count: , genre:"", published:"", rating:, image:"")