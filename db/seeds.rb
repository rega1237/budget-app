# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user0 = User.create(name: 'Rafael', email: 'rafael@mail.com')
user0.password = 'valido'
user0.password_confirmation = 'valido'
user0.confirm
user0.save

user1 = User.create(name: 'Olga', email: 'olga@mail.com')
user1.password = 'valido'
user1.password_confirmation = 'valido'
user1.confirm
user1.save

user2 = User.create(name: 'Luis', email: 'luis@mail.com')
user2.password = 'valido'
user2.password_confirmation = 'valido'
user2.confirm
user2.save

user3 = User.create(name: 'Maria', email: 'mario@mail.com')
user3.password = 'valido'
user3.password_confirmation = 'valido'
user3.confirm
user3.save

user4 = User.create(name: 'Pedro', email: 'pedro@mail.com')
user4.password = 'valido'
user4.password_confirmation = 'valido'
user4.confirm
user4.save

group0 = Group.create(name: 'Groceries', icon: 'https://metro.co.uk/wp-content/uploads/2022/05/SEC_105299519.jpg?quality=90&strip=all', author_id: user0.id)
group1 = Group.create(name: 'House', icon: 'https://s3.amazonaws.com/timeinc-houseplans-v2-production/region/images/539/original/Adaptive_Cottage_front_resize.jpg?1657733110', author_id: user0.id)
group2 = Group.create(name: 'Car', icon: 'https://upload.wikimedia.org/wikipedia/commons/6/60/Corsa_sport_2004.jpg', author_id: user0.id)
group3 = Group.create(name: 'Work', icon: 'https://www.colliers.com/-/media/images/colliers/asia/philippines/colliers-review/collierreview_hero_image_01312022_v2/hero_image_tondominium/hero_image_021522/hero_image_colliersviewpoint_022222.ashx?bid=0f5b3ed2a8de41f89e1a8d557e48f9f8', author_id: user1.id)
group4 = Group.create(name: 'Party of my son', icon: 'https://www.parents.com/thmb/F438STCK-a2v9991mZ-6woZps4c=/1800x1012/smart/filters:no_upscale()/GettyImages-543767951-88c15f8f45244907abe5a2013e9f260d.jpg', author_id: user1.id)
group5 = Group.create(name: 'school', icon: 'https://economictimes.indiatimes.com/thumb/msid-77391367,width-1200,height-900,resizemode-4,imgsize-677864/to-reduce-risk-experts-say-schools-should-make-adjustments-when-resuming-in-person-classes-.jpg?from=mdr', author_id: user2.id)
group6 = Group.create(name: 'vacation', icon: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Playa_Punto_Fijo.jpg', author_id: user3.id)
group7 = Group.create(name: 'party', icon: 'https://www.preferente.com/wp-content/uploads/2022/08/riu-party-1.jpg', author_id: user4.id)

expense0 = Expense.create(name: 'Vegetables', amount: 15.30, author_id: user0.id)
expense1 = Expense.create(name: 'Milk', amount: 1.5, author_id: user0.id)
expense2 = Expense.create(name: 'Bread', amount: 0.50, author_id: user0.id)
expense3 = Expense.create(name: 'Eggs', amount: 10, author_id: user0.id)
expense4 = Expense.create(name: 'Cheese', amount: 5.39, author_id: user0.id)
expense5 = Expense.create(name: 'Fix the bathroom', amount: 150, author_id: user0.id)
expense6 = Expense.create(name: 'Bill Electricity', amount: 108.60, author_id: user0.id)
expense7 = Expense.create(name: 'Bill Water', amount: 145.70, author_id: user0.id)
expense8 = Expense.create(name: 'Mortgage', amount: 1000, author_id: user0.id)
expense9 = Expense.create(name: 'Gas', amount: 50, author_id: user0.id)
expense10 = Expense.create(name: 'Oil change', amount: 60, author_id: user0.id)
expense11 = Expense.create(name: 'Transportation', amount: 50, author_id: user1.id)
expense12 = Expense.create(name: 'Lunch', amount: 200, author_id: user1.id)
expense13 = Expense.create(name: 'Pinata', amount: 30.30, author_id: user1.id)
expense14 = Expense.create(name: 'Ballons', amount: 10, author_id: user1.id)
expense15 = Expense.create(name: 'Books', amount: 300, author_id: user2.id)
expense16 = Expense.create(name: 'Uniform', amount: 560.49, author_id: user2.id)
expense17 = Expense.create(name: 'Tickets', amount: 900, author_id: user3.id)
expense18 = Expense.create(name: 'Hotel', amount: 500, author_id: user3.id)
expense19 = Expense.create(name: 'Food', amount: 200, author_id: user3.id)
expense20 = Expense.create(name: 'Drinks', amount: 100, author_id: user3.id)
expense21 = Expense.create(name: 'Food', amount: 180, author_id: user4.id)
expense22 = Expense.create(name: 'Drinks', amount: 100, author_id: user4.id)
expense23 = Expense.create(name: 'Uber', amount: 15, author_id: user4.id)

Classify.create(expense_id: expense0.id, group_id: group0.id)
Classify.create(expense_id: expense1.id, group_id: group0.id)
Classify.create(expense_id: expense2.id, group_id: group0.id)
Classify.create(expense_id: expense3.id, group_id: group0.id)
Classify.create(expense_id: expense4.id, group_id: group0.id)
Classify.create(expense_id: expense5.id, group_id: group1.id)
Classify.create(expense_id: expense6.id, group_id: group1.id)
Classify.create(expense_id: expense7.id, group_id: group1.id)
Classify.create(expense_id: expense8.id, group_id: group1.id)
Classify.create(expense_id: expense9.id, group_id: group2.id)
Classify.create(expense_id: expense10.id, group_id: group2.id)
Classify.create(expense_id: expense11.id, group_id: group3.id)
Classify.create(expense_id: expense12.id, group_id: group3.id)
Classify.create(expense_id: expense13.id, group_id: group4.id)
Classify.create(expense_id: expense14.id, group_id: group4.id)
Classify.create(expense_id: expense15.id, group_id: group5.id)
Classify.create(expense_id: expense16.id, group_id: group5.id)
Classify.create(expense_id: expense17.id, group_id: group6.id)
Classify.create(expense_id: expense18.id, group_id: group6.id)
Classify.create(expense_id: expense19.id, group_id: group6.id)
Classify.create(expense_id: expense20.id, group_id: group6.id)
Classify.create(expense_id: expense21.id, group_id: group7.id)
Classify.create(expense_id: expense22.id, group_id: group7.id)
Classify.create(expense_id: expense23.id, group_id: group7.id)
