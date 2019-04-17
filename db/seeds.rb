Booking.destroy_all
Question.destroy_all
Activity.destroy_all
User.destroy_all
Answer.destroy_all

q5 = Question.create(title: "Do you like music?", choice_1: 555, choice_2: 666)
q4 = Question.create(title: "Alchool or culture?", choice_1: q5.id, choice_2: 444)
q3 = Question.create(title: "Fun or Food?", choice_1: q4.id, choice_2: 999)
q2 = Question.create(title: "Are you a day-sparkler?", choice_1: q3.id, choice_2: q3.id)
q1 = Question.create(title: "Do you like to hang out alone or with other human beigns?", choice_1: q2.id, choice_2: 888)


l1 = Activity.create(title: "Victoria & Albert", description: "The Victoria and Albert Museum (often abbreviated as the V&A) in London is the world's largest museum of applied and decorative arts and design, as well as sculpture, housing a permanent collection of over 2.27 million objects. It was founded in 1852 and titled after Queen Victoria and Prince Albert.", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/V%26A_Museum_Foyer%2C_London_-_Oct_2012.jpg/800px-V%26A_Museum_Foyer%2C_London_-_Oct_2012.jpg", url: "https://www.vam.ac.uk/visit", category: "Museum" )
l2 = Activity.create(title: "Science Museum", category: "Museum", description: "The Science Museum is a major museum on Exhibition Road in South Kensington, London. It was founded in 1857 and today is one of the city's major tourist attractions, attracting 3.3 million visitors annually.", image: "https://upload.wikimedia.org/wikipedia/commons/c/c9/Science_Museum_-_East_Hall_2390.jpg", url: "https://www.sciencemuseum.org.uk/visit-us")
l3 = Activity.create(title: "The counter at Sabor", description: "Spanish food", category: "Restaurant", image: "https://media.timeout.com/images/105239021/750/422/image.jpg", url: "https://www.sevenrooms.com/reservations/saborrestaurant/tripadvisor")


u1 = User.create(name: "Riccardo", email: "ric123@gmail.com", password: "bananasarecool")
u2 = User.create(name: "Myrto", email: "myrtokonst@gmail.com", password: "parampimpom")
u3 = User.create(name: "George", email: "gorgey-boy@gmail.com", password: "ilikebeefjerky")
u4 = User.create(name: "Ranjit", email: "ranpan@gmail.com", password: "ilovebooksiamanerd")

b1 = Booking.create(user_id: User.first.id, activity_id: Activity.first.id)
b2 = Booking.create(user_id: u2.id, activity_id: l1.id)
b3 = Booking.create(user_id: u3.id, activity_id: l2.id)
b4 = Booking.create(user_id: u4.id, activity_id: l1.id)
b5 = Booking.create(user_id: u2.id, activity_id: l2.id)
b6 = Booking.create(user_id: u1.id, activity_id: l3.id)
b7 = Booking.create(user_id: u1.id, activity_id: l2.id)
b8 = Booking.create(user_id: u2.id, activity_id: l3.id)
b9 = Booking.create(user_id: u4.id, activity_id: l1.id)
