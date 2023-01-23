# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "Destroying database"
Book.destroy_all
User.destroy_all
Review.destroy_all
puts "Database Destroyed"

# puts "Seeding Select Users"
# User.create(username:"paigetetz", password:"1234", 
# profile_pic:"http://cdn.akc.org/content/article-body-image/siberian_husky_cute_puppies.jpg", fav_book: "The Book Theif", fav_genre: "Mystery")
# User.create(username:"ohheycerimay", password:"1234", 
# profile_pic:"https://i0.wp.com/bkreader.com/wp-content/uploads/2014/04/g-train.jpg?fit=500%2C380&ssl=1", fav_book: "Twlight", fav_genre: "YA")
# User.create(username:"tobytown", password:"1234", 
# profile_pic:"https://scontent-ord5-2.xx.fbcdn.net/v/t1.6435-9/69651319_10157171557082199_8810918459039809536_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=jO-M6xmJJyMAX9vara7&_nc_ht=scontent-ord5-2.xx&oh=00_AfAYNtFqoXjYtizXxCayHvpNFO-dssvCL6oTuuTC4FLDEg&oe=63E3FE9E",
# fav_book: "Metamorphasis", fav_genre: "Thriller")

# puts "Select Users Seeded"
puts "Seeding random users"

profile_pictures = [
    "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg",
    "https://images.pexels.com/photos/1557652/pexels-photo-1557652.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://www.fluentin3months.com/wp-content/uploads/2021/09/beautiful-spanish.jpg",
    "https://media.architecturaldigest.com/photos/583dd282efb84d105bd03040/master/w_3000,h_2065,c_limit/Most%20Beautiful%20Streets%20Around%20the%20World%20-%204.jpg",
    "https://media.istockphoto.com/id/1193218253/photo/hand-holding-heart-against-sparkling-golden-bokeh-lights.jpg?s=612x612&w=0&k=20&c=v4K3Figo4Kejx19tQ8DI0Uz9WPFtoJPF17fNF9dOP2k=",
    "https://s3.amazonaws.com/media.thecurvyfashionista.com/wp-content/uploads/2018/11/10120134/Plus-Size-Fashion-Photographer-Rochelle-Brock-3.jpg",
    "https://www.rockmywedding.co.uk/1200x1200/8716/5512/1020/lesbian-wedding.jpg?fit=1",
    "https://img.freepik.com/premium-vector/pretty-hijab-woman-side-profile-with-colorful-flower-bouquet_185694-1105.jpg",
    "https://expertphotography.b-cdn.net/wp-content/uploads/2018/10/joelvalve-572557-unsplash.jpg",
    "https://images.unsplash.com/photo-1583653319049-4db347571740?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTZ8MTQwMTcxMnx8ZW58MHx8fHw%3D&w=1000&q=80",
    "https://zipupandgo.com/wp-content/uploads/2021/06/travel-aesthetic-wallpaper-paris.jpg?ezimgfmt=ngcb2/notWebP",
    "https://images.unsplash.com/photo-1673893775801-3e7e93beb9e0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
    "https://images.unsplash.com/photo-1673323851582-69ed99ece463?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80",
    "https://images.unsplash.com/photo-1673394875583-25c21b00b4ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80",
    "https://images.unsplash.com/photo-1622080574110-6c8b39e2d1de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
    "https://images.unsplash.com/photo-1520471604-0b7189ca8fe6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80",
    "https://images.unsplash.com/photo-1558253014-d90405579468?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80",
    "https://images.unsplash.com/photo-1674326931395-fab2610e2d10?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=997&q=80",
    "https://images.unsplash.com/photo-1674203150628-8976926b7fad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=964&q=80"

]
15.times do 
    User.create(
        username: Faker::Internet.user_name,
        password: "1234",
        profile_pic: profile_pictures.sample,
        fav_book: Faker::Book.title,
        fav_genre: Faker::Book.genre

    )
end

puts "Random Users Seeded"


puts "Books Seeding"

b1 = Book.create(title: "Around the World in Eighty Days", author: "Jules Verne", summary: "One night in the reform club, Phileas Fogg bets his companions that he can travel across the globe in just eighty days. Breaking the well-established routine of his daily life, he immediately sets off for Dover with his astonished valet Passepartout. Passing through exotic lands and dangerous locations, they seize whatever transportation is at hand whether train or elephant overcoming set-backs and always racing against the clock.", short: "One night in the reform club, Phileas Fogg bets his companions that he can travel across the globe in just eighty days.", page_count: 288, genre:"Adventure", published:"1872", rating: 0, image_url:"https://images4.penguinrandomhouse.com/cover/9780241468654")
b2 = Book.create(title: "The Adventures of Sherlock Holmes", author: "Sir Arthur Conan Doyle", summary: "This gripping collection includes many of the famous cases-and great strokes of brilliance-that made the legendary Sherlock Holmes one of fiction's most popular creations. With his devoted secretary, Dr. Watson, Holmes emerges from his smoke-filled rooms on Baker Street to grapple with the forces of treachery, intrigue, and evil in such cases as “The Speckled Band,” in which a terrified woman begs Holmes and Watson's help in solving the mystery surrounding her sister's death, and “A Scandal in Bohemia,” which portrays a European king blackmailed by his mistress. A spine-tingling treat for anyone who loves a classic whodunit, The Adventures of Sherlock Holmes shows the inimitable detective at his best.", short:"This gripping collection includes many of the famous cases-and great strokes of brilliance-that made the legendary Sherlock Holmes one of fiction's most popular creations.", page_count: 389 , genre:"Mystery", published:"1892", rating:0, image_url:"https://images1.penguinrandomhouse.com/cover/9780241347782")
b3 = Book.create(title: "Don Quixote", author: "Miguel De Cervantes Saavedra", summary: "Don Quixote has become so entranced reading tales of chivalry that he decides to turn knight errant himself. In the company of his faithful squire, Sancho Panza, these exploits blossom in all sorts of wonderful ways. While Quixote's fancy often leads him astray he tilts at windmills, imagining them to be giants Sancho acquires cunning and a certain sagacity. Sane madman and wise fool, they roam the world together-and together they have haunted reader's imaginations for nearly four hundred years. With its experimental form and literary playfulness, Don Quixote has been generally recognized as the first modern novel. This Penguin Classics edition includes John Rutherfords masterly translation, which does full justice to the energy and wit of Cervantes's prose.", short:"Don Quixote has become so entranced reading tales of chivalry that he decides to turn knight errant himself.", page_count:1056 , genre:"Epic Fantasy", published:"1605", rating:0, image_url:"https://images3.penguinrandomhouse.com/cover/9780241347768")
b4 = Book.create(title: "Villette", author: "Charlotte Bronte", summary: "With neither friends nor family, Lucy Snowe sets sail from England to find employment in a girls' boarding school in the small town of Villette. There she struggles to retain her self-possession in the face of unruly pupils, an initially suspicious headmaster, and her own complex feelings, first for the school's English doctor and then for the dictatorial professor Paul Emmanuel. Drawing on her own deeply unhappy experiences as a governess in Brussels, Charlotte Brontë's last and most autobiographical novel is a powerfully moving study of isolation and the pain of unrequited love.", short: "With neither friends nor family, Lucy Snowe sets sail from England to find employment in a girls' boarding school in the small town of Villette.", page_count:672 , genre:"Gothic Fiction", published:1853, rating:0, image_url:"https://images3.penguinrandomhouse.com/cover/9780241198964")
b5 = Book.create(title: "The Canterbury Tales", author: "Geoffrey Chaucer", summary: "In The Canterbury Tales, Chaucer created one of the great touchstones of English literature, a masterly collection of chivalric romances, moral allegories, and low farce. A storytelling competition between a group of pilgrims from all walks of life is the occasion for a series of tales that range from the Knight's account of courtly love and the ebullient Wife of Bath's Arthurian legend, to the ribald anecdotes of the Miller and the Cook. Nevill Coghill's masterly and vivid modern English verse translation is rendered with consummate skill to retain all the vigor and poetry of Chaucer's fourteenth-century Middle English.", short: "In The Canterbury Tales, Chaucer created one of the great touchstones of English literature, a masterly collection of chivalric romances, moral allegories, and low farce.", page_count: 528, genre:"Medieval Poetry", published:"1476", rating:0, image_url:"https://images3.penguinrandomhouse.com/cover/9780141393216")
b6 = Book.create(title: "War and Peace", author: "Leo Tolstoy", summary: "At a glittering society party in St. Petersburg in 1805, conversations are dominated by the prospect of war. Terror swiftly engulfs the country as Napoleon's army marches on Russia, and the lives of three young people are changed forever. The stories of quixotic Pierre, cynical Andrey, and impetuous Natasha interweave with a huge cast, from aristocrats and peasants, to soldiers and Napoleon himself. In War and Peace, Tolstoy entwines grand themes—conflict and love, birth and death, free will and fate—with unforgettable scenes of nineteenth-century Russia, to create a magnificent epic of human life in all its imperfection and grandeur.", short: "At a glittering society party in St. Petersburg in 1805, conversations are dominated by the prospect of war.", page_count: 1440 , genre:"War Fiction", published:"1867", rating:0, image_url:"https://images4.penguinrandomhouse.com/cover/9780241265543")
b7 = Book.create(title: "Paradise Lost", author: "John Milton", summary: "In Paradise Lost, Milton produced a poem of epic scale, conjuring up a vast, awe-inspiring cosmos ranging across huge tracts of space and time. And yet, in putting a charismatic Satan and naked Adam and Eve at the center of this story, he also created an intensely human tragedy on the Fall of Man. Written when Milton was in his fifties—blind, bitterly disappointed by the Restoration, and briefly in danger of execution—Paradise Lost's apparent ambivalence toward authority has led to intense debate about whether it manages to “justify the ways of God to men,” or exposes the cruelty of Christianity.", short: "In Paradise Lost, Milton produced a poem of epic scale, conjuring up a vast, awe-inspiring cosmos ranging across huge tracts of space and time.", page_count: 512 , genre:"Epic Poetry", published:"1667", rating:0, image_url:"https://images3.penguinrandomhouse.com/cover/9780241240618")
b8 = Book.create(title: "Moby-Dick", author: "Herman Melville", summary: "In part, Moby-Dick is the story of an eerily compelling madman pursuing an unholy war against a creature as vast and dangerous and unknowable as the sea itself. But more than just a novel of adventure, more than an encyclopedia of whaling lore and legend, Moby-Dick is a haunting, mesmerizing, and important social commentary populated with several of the most unforgettable and enduring characters in literature. Written with wonderfully redemptive humor, Moby-Dick is a profound and timeless inquiry into character, faith, and the nature of perception.", short: "In part, Moby-Dick is the story of an eerily compelling madman pursuing an unholy war against a creature as vast and dangerous and unknowable as the sea itself.", page_count: 720 , genre:"Sea Stories", published:"1851", rating:0, image_url:"https://images2.penguinrandomhouse.com/cover/9780141199603")
b9 = Book.create(title: "Madame Bovary", author: "Gustave Flaubert", summary: "Emma Bovary is beautiful and bored, trapped in her marriage to a mediocre doctor and stifled by the banality of provincial life. An ardent reader of sentimental novels, she longs for passion and seeks escape in fantasies of high romance, in voracious spending and, eventually, in adultery. But even her affairs bring her disappointment and devastating consequences. Flaubert's erotically charged and psychologically acute portrayal of Emma Bovary caused a moral outcry on its publication in 1857. It was deemed so lifelike that many women claimed they were the model for his heroine; but Flaubert insisted: Madame Bovary, c'est moi. One of the greatest novels of the 19th century, Flaubert's torrid debut lives on in Geoffrey Wall's brilliant translation.  This edition features an introduction by Wall, and a preface on Emma Bovary's femininity and modernity by novelist Michèle Roberts.", short:"Emma Bovary is beautiful and bored, trapped in her marriage to a mediocre doctor and stifled by the banality of provincial life.", page_count: 288, genre:"Literary Fiction", published:"1857", rating:0, image_url:"https://images1.penguinrandomhouse.com/cover/9780141394671")

b10 = Book.create(title: "The Jungle Books", author: "Rudyard Kipling", summary: "The story of Mowgli, the abandoned “man-cub” who is brought up by wolves in the jungles of Central India, is one of the greatest literary myths ever created. As he embarks on a series of thrilling escapades, Mowgli encounters such unforgettable creatures as the bear Baloo, the graceful black panther Bagheera and Shere Khan, the tiger with the blazing eyes. Other animal stories in The Jungle Books range from the dramatic battle between good and evil in “Rikki-tikki-tav” to the macabre comedy, “The Undertakers.” With The Jungle Books, Rudyard Kipling drew on ancient beast fables, Buddhist philosophy, and memories of his Anglo-Indian childhood to create a rich, symbolic portrait of man and nature, and an eternal classic of childhood. This edition contains both of Kipling's Jungle Books, as well as “In the Rukh,” the story that introduced readers to Mowgli.", short:"The story of Mowgli, the abandoned “man-cub” who is brought up by wolves in the jungles of Central India, is one of the greatest literary myths ever created.", page_count: 448, genre:"Action and Adventure", published:"1894", rating:0, image_url:"https://images2.penguinrandomhouse.com/cover/9780141394626")
b11 = Book.create(title: "Frankenstein", author: "Mary Shelley", summary: "Victor Frankenstein plunders graveyards for the material to fashion a new being, which he shocks into life by electricity. But his botched creature, rejected by Frankenstein and denied human companionship, sets out to destroy his maker and all that he holds dear. This chilling gothic tale, begun when Mary Shelley was just nineteen years old, would become the world's most famous work of horror fiction, and remains a devastating exploration of the limits of human creativity. This edition also includes 'A Fragment' by Lord Byron and 'The Vampyre: A Tale' by John Polidori, as well as an introduction and notes Mary Shelley (1797-1851), the daughter of pioneering thinkers Mary Wollstonecraft and William Godwin, eloped with the poet Percy Shelley at the age of sixteen. Three years later, during a wet summer on Lake Geneva, Shelley famously wrote her masterpiece, Frankenstein. The years of her marriage were blighted by the deaths of three of her four children, and further tragedy followed in 1822, when Percy Shelley drowned in Italy. Following his death, Mary Shelley returned to England and continued to travel and write until her own death at the age of fifty-three.", short:"Victor Frankenstein plunders graveyards for the material to fashion a new being, which he shocks into life by electricity.", page_count:352 , genre:"Science Fiction", published:"1818", rating:0, image_url:"https://images1.penguinrandomhouse.com/cover/9780141393391")

b12 = Book.create(title: "Dracula", author: "Bram Stoker", summary: "When Jonathan Harker visits Transylvania to help Count Dracula with the purchase of a London house, he makes a series of horrific discoveries about his client. Soon afterwards, various bizarre incidents unfold in England: an apparently unmanned ship is wrecked off the coast of Whitby; a young woman discovers strange puncture marks on her neck; and the inmate of a lunatic asylum raves about the 'Master' and his imminent arrival. In Dracula, Bram Stoker created one of the great masterpieces of the horror genre, brilliantly evoking a nightmare world of vampires and vampire hunters and also illuminating the dark corners of Victorian sexuality and desire.", short:"When Jonathan Harker visits Transylvania to help Count Dracula with the purchase of a London house, he makes a series of horrific discoveries about his client.", page_count: 512, genre:"Folklore", published:"1897", rating:0, image_url:"https://images3.penguinrandomhouse.com/cover/9780141196886")
b13 = Book.create(title: "Middlemarch", author: "George Eliot", summary: "George Eliot's most ambitious novel is a masterly evocation of diverse lives and changing fortunes in a provincial community. Peopling its landscape are Dorothea Brooke, a young idealist whose search for intellectual fulfillment leads her into a disastrous marriage to the pedantic scholar Casaubon; the charming but tactless Dr Lydgate, whose marriage to the spendthrift beauty Rosamund and pioneering medical methods threaten to undermine his career; and the religious hypocrite Bulstrode, hiding scandalous crimes from his past. As their stories interweave, George Eliot creates a richly nuanced and moving drama, hailed by Virginia Woolf as 'one of the few English novels written for adult people'.", short:"George Eliot's most ambitious novel is a masterly evocation of diverse lives and changing fortunes in a provincial community.", page_count: 880, genre:"Historical Fiction", published:"1871", rating:0, image_url:"https://images2.penguinrandomhouse.com/cover/9780141196893")
b14 = Book.create(title: "Persuasion", author: "Jane Austen", summary: "At twenty-seven, Anne Elliot is no longer young and has few romantic prospects. Eight years earlier, she had been persuaded by her friend Lady Russell to break off her engagement to Frederick Wentworth, a handsome naval captain with neither fortunenor rank. What happens when they encounter each other again is movingly told in Jane Austen's last completed novel. Set in the fashionable societies of Lyme Regis and Bath, Persuasion is a brilliant satire of vanity and pretension, but, above all,it is a love story tinged with the heartache of missed opportunities.", short:"At twenty-seven, Anne Elliot is no longer young and has few romantic prospects.", page_count:250 , genre:"Historical Romance", published:"1817", rating:0, image_url:"https://images3.penguinrandomhouse.com/cover/9780141197692")
b15 = Book.create(title: "Gulliver's Travels", author: "Jonathan Swift", summary: "Shipwrecked and cast adrift, Lemuel Gulliver wakes to find himself on Lilliput, an island inhabited by little people, whose height makes their quarrels over fashion and fame seem ridiculous. His subsequent encounters - with the crude giants of Brobdingnag, the philosophical Houyhnhnms and brutish Yahoos - give Gulliver new, bitter insights into human behaviour. Swift's savage satire views mankind in a distorted hall of mirrors as a diminished, magnified and finally bestial species, presenting us with an uncompromising reflection of ourselves.", short:"Shipwrecked and cast adrift, Lemuel Gulliver wakes to find himself on Lilliput, an island inhabited by little people, whose height makes their quarrels over fashion and fame seem ridiculous.", page_count: 336 , genre:"Epic Fantasy", published:"1726", rating:0, image_url:"https://images1.penguinrandomhouse.com/cover/9780141196640")
b16 = Book.create(title: "Oliver Twist", author: "Charles Dickens", summary: "The story of the orphan Oliver, who runs away from the workhouse only to be taken in by a den of thieves, shocked readers when it was first published. Dickens's tale of childhood innocence beset by evil depicts the dark criminal underworld of a London peopled by vivid and memorable characters - the arch-villain Fagin, the artful Dodger, the menacing Bill Sikes and the prostitute Nancy. Combining elements of Gothic Romance, the Newgate Novel and popular melodrama, Dickens created an entirely newkind of fiction, scathing in its indictment of a cruel society, and pervaded by an unforgettable sense of threat and mystery.", short:"The story of the orphan Oliver, who runs away from the workhouse only to be taken in by a den of thieves, shocked readers when it was first published.", page_count: 608, genre:"Historical Fiction", published:"1838", rating:0, image_url:"https://images1.penguinrandomhouse.com/cover/9780141192499")
b17 = Book.create(title: "The Odyssey", author: "Homer", summary: "The epic tale of Odysseus and his ten-year journey home after the Trojan War forms one of the earliest and greatest works of Western literature. Confronted by natural and supernatural threats - shipwrecks, battles, monsters and the implacable enmity of the sea-god Poseidon - Odysseus must use his wit and native cunning if he is to reach his homeland safely and overcome the obstacles that, even there, await him.", short:"The epic tale of Odysseus and his ten-year journey home after the Trojan War forms one of the earliest and greatest works of Western literature.", page_count: 416, genre:"Poetry", published:"8th-9th Century BCE", rating:0, image_url:"https://images4.penguinrandomhouse.com/cover/9780141192444")
b18 = Book.create(title: "The Iliad", author: "Homer", summary: "The Iliad is the first and the greatest literary achievement of Greek civilization—the cornerstone of Western culture and an epic poem without rival in world literature. The story centers on the critical events in the last year of the Trojan War, which lead to Achilleus's killing of Hektor and the fall of Troy. But Homer's theme is not simply war or heroism. With compassion and humanity, he presents a universal and tragic view of the world: human life lived under the shadow of suffering and death set against a vast and largely unpitying divine background.", short:"The Iliad is the first and the greatest literary achievement of Greek civilization—the cornerstone of Western culture and an epic poem without rival in world literature.", page_count: 560, genre:"Poetry", published:"8th-9th Century BCE", rating:0, image_url:"https://images1.penguinrandomhouse.com/cover/9780141394657")

b19 = Book.create(title: "The Aeneid", author: "Virgil", summary: "Fleeing the ashes of Troy, Aeneas, Achilles' mighty foe in the Iliad, begins an incredible journey to fulfill his destiny as the founder of Rome. His voyage will take him through stormy seas, entangle him in a tragic love affair, and lure him into the world of the dead itself-all the way tormented by the vengeful Juno, Queen of the Gods. Ultimately, he reaches the promised land of Italy where, after bloody battles and with high hopes, he founds what will become the Roman empire. An unsparing portrait of a man caught between love, duty, and fate, the Aeneid redefines passion, nobility, and courage for our times. Robert Fagles, whose acclaimed translations of Homer's Iliad and Odyssey were welcomed as major publishing events, brings the Aeneid to a new generation of readers, retaining all of the gravitas and humanity of the original Latin as well as its powerful blend of poetry and myth. Featuring an illuminating introduction to Virgil's world by esteemed scholar Bernard Knox, this volume lends a vibrant new voice to one of the seminal literary achievements of the ancient world.", short:"Fleeing the ashes of Troy, Aeneas, Achilles' mighty foe in the Iliad, begins an incredible journey to fulfill his destiny as the founder of Rome.", page_count: 368, genre:"Literary Fiction", published:"29 BCE", rating:0, image_url:"https://images2.penguinrandomhouse.com/cover/9780141996332")
b20 = Book.create(title: "The Picture of Dorian Gray", author: "Oscar Wilde", summary: "Enthralled by his own exquisite portrait, Dorian Gray exchanges his soul for eternal youth and beauty. Influenced by his friend Lord Henry Wotton, he is drawn into a corrupt double life; indulging his desires in secret while remaining a gentleman in the eyes of polite society. Only his portrait bears the traces of his decadence. The novel was a succès de scandale and the book was later used as evidence against Wilde at the Old Bailey in 1895. It has lost none of its power to fascinate and disturb.", short:"Enthralled by his own exquisite portrait, Dorian Gray exchanges his soul for eternal youth and beauty.", page_count: 252, genre:"Gothic Horror", published:"1890", rating:0, image_url:"https://images4.penguinrandomhouse.com/cover/9780141442464")
b21 = Book.create(title: "Wuthering Heights", author: "Emily Bronte", summary: "In a house haunted by memories, the past is everywhere … As darkness falls, a man caught in a snowstorm is forced to shelter at the strange, grim house Wuthering Heights. It is a place he will never forget. There he will come to learn the story of Cathy: how she was forced to choose between her well-meaning husband and the dangerous man she had loved since she was young. How her choice led to betrayal and terrible revenge - and continues to torment those in the present. How love can transgress authority, convention, even death.", short:"In a house haunted by memories, the past is everywhere", page_count: 353, genre:"Gothic Horror", published:"1847", rating:0, image_url:"https://images1.penguinrandomhouse.com/cover/9780141040356")
b22 = Book.create(title: "Little Women", author: "Louisa May Alcott", summary: "Meg, Jo, Amy and Beth - four “little women” enduring hardships and enjoying adventures in Civil War New England. The charming story of the March sisters, Little Women has been adored by generations. Readers have rooted for Laurie in his pursuit of Jo's hand, cried over little Beth's death, and dreamed of traveling through Europe with old Aunt March and Amy. Future writers have found inspiration in Jo's devotion to her writing. In this simple, enthralling tale, both parts of which are included here, Louisa May Alcott has created four of American literature's most beloved women.", short:"Meg, Jo, Amy and Beth - four “little women” enduring hardships and enjoying adventures in Civil War New England.", page_count: 544, genre:"Literary Fiction", published:"1868", rating:0, image_url:"https://images3.penguinrandomhouse.com/cover/9780141192413")
b23 = Book.create(title: "A Tale of Two Cities", author: "Charles Dickens", summary: "After eighteen years as a political prisoner in the Bastille the aging Dr Manette is finally released and reunited with his daughter in England. There two very different men, Charles Darnay, an exiled French aristocrat, and Sydney Carton, a disreputable but brilliant English lawyer, become enmeshed through their love for Lucie Manette. From the tranquil lanes of London, they are all drawn against their will to the vengeful, bloodstained streets of Paris at the height of the Reign of Terror and soon fall under the lethal shadow of La Guillotine.", short:"After eighteen years as a political prisoner in the Bastille the aging Dr Manette is finally released and reunited with his daughter in England.", page_count: 488, genre:"Historical Fiction", published:"1859", rating:0, image_url:"https://images1.penguinrandomhouse.com/cover/9780141196909")
b24 = Book.create(title: "The Sonnets and a Lover's Complaint", author: "William Shakespeare", summary: "When this volume of Shakespeare's poems first appeared in 1609, he had already written most of the great plays that made him famous. The 154 sonnets - all but two of which are addressed to a beautiful young man or a treacherous 'dark lady' - contain some of the most exquisite and haunting poetry ever written, and deal with eternal subjects such as love and infidelity, memory and mortality, and the destruction wreaked by Time. Also included is A Lover's Complaint, originally published with the sonnets, in which a young woman is overheard lamenting her betrayal by a heartless seducer.", short:"When this volume of Shakespeare's poems first appeared in 1609, he had already written most of the great plays that made him famous.", page_count: 272, genre:"Poetry", published:"1609", rating:0, image_url:"https://images4.penguinrandomhouse.com/cover/9780141192574")
b25 = Book.create(title: "Alice's Adventures in Wonderland and Through the Looking Glass", author: "Lewis Carroll", summary: " 'I had sent my heroine straight down a rabbit-hole without the least idea what was to happen afterwards,' wrote Dodgson, describing how Alice was conjured up one 'golden afternoon' in 1862 to entertain his child-friend Alice Liddell. In the magical world of Wonderland and the back-to-front Looking-Glass kingdom, order is turned upside-down: a baby turns into a pig; time is abandoned at a tea-party; and a chaotic game of chess makes a 7-year-old a Queen.", short:"I had sent my heroine straight down a rabbit-hole without the least idea what was to happen afterwards", page_count: 448, genre:"Literary Fiction", published:"1865", rating:0, image_url:"https://images3.penguinrandomhouse.com/cover/9780141192468")
b26 = Book.create(title: "Vanity Fair", author: "William Makepeace Thackeray", summary: "No one is better equipped in the struggle for wealth and worldly success than the alluring and ruthless Becky Sharp, who defies her impoverished background to clamber up the class ladder. Her sentimental companion Amelia, however, longs only for caddish soldier George. As the two heroines make their way through the tawdry glamour of Regency society, battles—military and domestic—are fought, fortunes made and lost. The one steadfast and honourable figure in this corrupt world is Dobbin with his devotion to Amelia, bringing pathos and depth to Thackeray's gloriously satirical epic of love and social adventure.", short:"No one is better equipped in the struggle for wealth and worldly success than the alluring and ruthless Becky Sharp, who defies her impoverished background to clamber up the class ladder.", page_count: 912, genre:"Historical Fiction", published:"1848", rating:0, image_url:"https://images2.penguinrandomhouse.com/cover/9780141199542")
b27 = Book.create(title: "The Count of Monte Cristo", author: "Alexandre Dumas", summary: "Thrown in prison for a crime he has not committed, Edmond Dantes is confined to the grim fortress of the Château d'If. There he learns of a great hoard of treasure hidden on the Isle of Monte Cristo and becomes determined not only to escape but to unearth the treasure and use it to plot the destruction of the three men responsible for his incarceration. A huge popular success when it was first serialized in the 1840s, Dumas was inspired by a real-life case of wrongful imprisonment when writing his epic tale of suffering and retribution.", short:"Thrown in prison for a crime he has not committed, Edmond Dantes is confined to the grim fortress of the Château d'If.", page_count: 1276, genre:"Literary Fiction", published:"1846", rating:0, image_url:"https://images2.penguinrandomhouse.com/cover/9780141392462")
b28 = Book.create(title: "The Adventures of Huckleberry Finn", author: "Mark Twain", summary: "When Huck escapes from his drunken father and the 'sivilizing' Widow Douglas with the runaway slave Jim, he embarks on a series of adventures that draw him to feuding families and the trickery of the unscrupulous 'Duke' and 'Dauphin'. Beneath the exploits, however, are more serious undercurrents - of slavery, adult control and, above all, of Huck's struggle between his instinctive goodness and the corrupt values of society, which threaten his deep and enduring friendship with Jim.", short:"When Huck escapes from his drunken father and the 'sivilizing' Widow Douglas with the runaway slave Jim, he embarks on a series of adventures.", page_count: 339, genre:"Historical Fiction", published:"1884", rating:0, image_url:"https://images4.penguinrandomhouse.com/cover/9780141199573")
b29 = Book.create(title: "Treasure Island", author: "Robert Louis Stevenson", summary: "The story grew out of a map that led to imaginary treasure, devised during a holiday in Scotland by Stevenson and his nephew. The tale is told by an adventurous boy, Jim Hawkins, who gets hold of a treasure map and sets off with an adult crew in search of the buried treasure. Among the crew, however, is the treacherous Long John Silver who is determined to keep the treasure for himself. Stevenson's first full-length work of fiction brought him immediate fame and continues to captivate readers of all ages.", short:"The story grew out of a map that led to imaginary treasure, devised during a holiday in Scotland by Stevenson and his nephew.", page_count: 210, genre:"Adventure", published:"1882", rating:0, image_url:"https://images1.penguinrandomhouse.com/cover/9780141192451")
b30 = Book.create(title: "The Turn of the Screw and Other Ghost Stories", author: "Henry James", summary: "In “The Turn of the Screw,” one of the most famous ghost stories of all time, a governess becomes obsessed with the belief that malevolent forces are stalking the children in her care. It is accompanied here by several more of the very best of Henry James's short stories, all exploring ghosts and the uncanny.", short:"In “The Turn of the Screw,” one of the most famous ghost stories of all time, a governess becomes obsessed with the belief that malevolent forces are stalking the children in her care.", page_count: 384, genre:"Horror", published:"1894", rating:0, image_url:"https://images4.penguinrandomhouse.com/cover/9780241552650")

puts "Books Seeded"

puts "Reviews seeding"

80.times do 
    Review.create(
        user_id: User.all.sample.id,
        book_id: Book.all.sample.id,
        headline: Faker::Quote.famous_last_words,
        commentary: Faker::Lorem.paragraph(sentence_count: 10),
        rating: rand(1..5),
        likes: rand(1..30)

    )
end
puts "Reviews Seeded"

puts "Database Seeded"