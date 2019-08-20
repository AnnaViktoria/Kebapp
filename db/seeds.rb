puts "Destroying everything"

KebabShop.destroy_all
Review.destroy_all
Schedule.destroy_all

puts "Creating Kebab Shop 1"
kebab_shop = KebabShop.new(user: "Dracula", name: "Shawarma Huset", address: 'Godthabsvej 5, 2000, Fredriksberg')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566306072/Screenshot_2019-08-20_at_15.00.55_pdz5zm.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 1 created!"

puts "Creating Kebab Shop 2"
kebab_shop = KebabShop.new(user: "Trump", name: "Kebab King", address: 'Mindstrasse 11, 2023, Kurlssberg')
kebab_shop.remote_photo_url = "https://i.redd.it/5jlzxpm1yf901.jpg"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 3).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 9,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 9,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 9,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 9,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 12, closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 12, closing_hour: 2 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12, closing_hour: 2 ).save!
puts "Kebab Shop 2 created!"

puts "Creating Kebab Shop 3"
kebab_shop = KebabShop.new(user: "Pence", name: "Farafelle world", address: 'Norgate 18, 2011, Nemo')
kebab_shop.remote_photo_url = "https://i.redd.it/5jlzxpm1yf901.jpg"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 1).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 12, closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 12, closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 8,  closing_hour: 24 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 12, closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 8,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 11,  closing_hour: 22 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 11,  closing_hour: 3 ).save!
puts "Kebab Shop 3 created!"

puts "Creating Kebab Shop 4"
kebab_shop = KebabShop.new(user: "Yan", name: "Durum Bar", address: 'Nørregade 53, 1165, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566290368/Screenshot_2019-08-20_at_10.39.02_gdb9q6.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 6 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 6 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 12 ).save!
puts "Kebab Shop 4 created!"

puts "Creating Kebab Shop 5"
kebab_shop = KebabShop.new(user: "Alex", name: "Strøgshawarma", address: 'Frederiksberggade 5, 1459, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566290529/Screenshot_2019-08-20_at_10.41.51_byflaw.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 5 created!"

puts "Creating Kebab Shop 6"
kebab_shop = KebabShop.new(user: "George", name: "Ahab's Kebab", address: 'Snaregade 6, 1205, København')
kebab_shop.remote_photo_url = "https://i.redd.it/5jlzxpm1yf901.jpg"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 6 created!"

puts "Creating Kebab Shop 7"
kebab_shop = KebabShop.new(user: "Tati", name: "Shawarma Grill-House", address: 'Frederiksberggade 36, 1459, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566291358/Screenshot_2019-08-20_at_10.55.44_nkatgc.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 7 created!"

puts "Creating Kebab Shop 8"
kebab_shop = KebabShop.new(user: "Nico", name: "Take & Eat I/S", address: 'Nørrebrogade 30, 2200, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566291518/Screenshot_2019-08-20_at_10.58.26_nrccq4.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 11,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 11,  closing_hour: 10 ).save!
puts "Kebab Shop 8 created!"

puts "Creating Kebab Shop 9"
kebab_shop = KebabShop.new(user: "Marie", name: "KEBABEN", address: 'Gothersgade 32, 1123, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566291741/Screenshot_2019-08-20_at_11.02.08_czpq1n.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 7 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 7 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 10 ).save!
puts "Kebab Shop 9 created!"

puts "Creating Kebab Shop 10"
kebab_shop = KebabShop.new(user: "Anna", name: "Torvets Kebab", address: 'Sankt Hans Torv 24, 2200, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566291597/Screenshot_2019-08-20_at_10.59.46_omfy4a.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 22 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 22 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 22 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 22 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 18 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 12,  closing_hour: 18 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 0 ).save!
puts "Kebab Shop 10 created!"

puts "Creating Kebab Shop 11"
kebab_shop = KebabShop.new(user: "Nathan", name: "Shawarma Kebap Palace", address: 'Frederiksberggade 30, 1459, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566292851/Screenshot_2019-08-20_at_11.20.31_vx2srz.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 3).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 11 created!"

puts "Creating Kebab Shop 12"
kebab_shop = KebabShop.new(user: "Martino", name: "Palazzo Pizza", address: 'Kronprinsessegade 54, 1306, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566293065/Screenshot_2019-08-20_at_11.24.09_d2jfcu.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 10 ).save!
puts "Kebab Shop 12 created!"

puts "Creating Kebab Shop 13"
kebab_shop = KebabShop.new(user: "Amanda", name: "Beyti", address: 'Nørrebrogade 13, 2200, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566293225/Screenshot_2019-08-20_at_11.26.51_flrgxb.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 6 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 11,  closing_hour: 6 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 12 ).save!
puts "Kebab Shop 13 created!"

puts "Creating Kebab Shop 14"
kebab_shop = KebabShop.new(user: "Huayra", name: "King Of Kebab Pizza & Grill", address: 'Nørrebrogade 20, 2200, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566293958/Screenshot_2019-08-20_at_11.38.56_abty03.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 6 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 7 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 7 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 5 ).save!
puts "Kebab Shop 14 created!"

puts "Creating Kebab Shop 15"
kebab_shop = KebabShop.new(user: "Dorte", name: "Pizza Kebab House", address: 'Blågårdsgade 35, 2200, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566294211/Screenshot_2019-08-20_at_11.43.17_cvjimd.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 10 ).save!
puts "Kebab Shop 15 created!"

puts "Creating Kebab Shop 16"
kebab_shop = KebabShop.new(user: "Clinton", name: "Safir Kebab", address: 'Jagtvej 23, 2200, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566307379/Screenshot_2019-08-20_at_15.22.44_ugng6a.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 12,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 12 ).save!
puts "Kebab Shop 16 created!"

puts "Creating Kebab Shop 17"
kebab_shop = KebabShop.new(user: "John", name: "Den Grønne Shawarma", address: ' Falkoner Alle 26A, 2000, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566308036/Screenshot_2019-08-20_at_15.33.37_rzq9iu.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 11,  closing_hour: 10 ).save!
puts "Kebab Shop 17 created!"

puts "Creating Kebab Shop 18"
kebab_shop = KebabShop.new(user: "Danny", name: "Oasen Kebab Pizza", address: 'Falkoner Alle 22, 2000, Frederiksberg')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566308842/Screenshot_2019-08-20_at_15.47.09_rpidub.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 18 created!"

puts "Creating Kebab Shop 19"
kebab_shop = KebabShop.new(user: "Vanessa", name: "Falafelkælderen", address: 'Rantzausgade 14, 2200, København')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566309072/Screenshot_2019-08-20_at_15.50.52_alunwt.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 11 ).save!
puts "Kebab Shop 19 created!"

puts "Creating Kebab Shop 20"
kebab_shop = KebabShop.new(user: "Vincent", name: "Kebab Town", address: 'Falkoner Alle 44, 2000, Frederiksberg')
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566309239/Screenshot_2019-08-20_at_15.53.46_t0z4bk.png"
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 12 ).save!
puts "Kebab Shop 20 created!"
