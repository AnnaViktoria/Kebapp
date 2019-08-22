puts "Destroying everything"

KebabShop.destroy_all
Review.destroy_all
Schedule.destroy_all

puts "Creating Kebab Shop 1"
kebab_shop = KebabShop.new(name: "Durum Bar", address: 'Nørregade 53, 1165, København', rating: 1)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566290368/Screenshot_2019-08-20_at_10.39.02_gdb9q6.png"
kebab_shop.save!

Review.new(user: "Yan", kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 6 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 6 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 12 ).save!
puts "Kebab Shop  created!"

puts "Creating Kebab Shop 2"
kebab_shop = KebabShop.new(name: "Strøgshawarma", address: 'Frederiksberggade 5, 1459, København', rating: 2)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566290529/Screenshot_2019-08-20_at_10.41.51_byflaw.png"
kebab_shop.save!

Review.new(user: "Alex", kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 2 created!"

puts "Creating Kebab Shop 3"
kebab_shop = KebabShop.new(name: "Ahab's Kebab", address: 'Snaregade 6, 1205, København', rating: 3)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566478042/nil-martin-vela-bitxo-gordo-render-2_ljxizj.jpg"
kebab_shop.save!

Review.new(user: "George", kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 3 created!"

puts "Creating Kebab Shop 4"
kebab_shop = KebabShop.new(name: "Shawarma Grill-House", address: 'Frederiksberggade 36, 1459, København', rating: 4)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566291358/Screenshot_2019-08-20_at_10.55.44_nkatgc.png"
kebab_shop.save!

Review.new(user: "Tati", kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 4 created!"

puts "Creating Kebab Shop 5"
kebab_shop = KebabShop.new(name: "Take & Eat I/S", address: 'Nørrebrogade 30, 2200, København', rating: 5)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566291518/Screenshot_2019-08-20_at_10.58.26_nrccq4.png"
kebab_shop.save!

Review.new(user: "Nico", kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 11,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 11,  closing_hour: 10 ).save!
puts "Kebab Shop 5 created!"

puts "Creating Kebab Shop 6"
kebab_shop = KebabShop.new(name: "KEBABEN", address: 'Gothersgade 32, 1123, København', rating: 2)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566291741/Screenshot_2019-08-20_at_11.02.08_czpq1n.png"
kebab_shop.save!

Review.new(user: "Marie", kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 7 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 7 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 10 ).save!
puts "Kebab Shop 6 created!"

puts "Creating Kebab Shop 7"
kebab_shop = KebabShop.new(name: "Torvets Kebab", address: 'Sankt Hans Torv 24, 2200, København', rating: 3)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566291597/Screenshot_2019-08-20_at_10.59.46_omfy4a.png"
kebab_shop.save!

Review.new(user: "Anna", kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 22 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 22 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 22 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 22 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 18 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 12,  closing_hour: 18 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 0 ).save!
puts "Kebab Shop 7 created!"

puts "Creating Kebab Shop 8"
kebab_shop = KebabShop.new(name: "Shawarma Kebap Palace", address: 'Frederiksberggade 30, 1459, København', rating: 2)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566292851/Screenshot_2019-08-20_at_11.20.31_vx2srz.png"
kebab_shop.save!

Review.new(user: "Nathan", kebab_shop_id: kebab_shop.id, content:"content test", rating: 3).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 8 created!"

puts "Creating Kebab Shop 9"
kebab_shop = KebabShop.new(name: "Palazzo Pizza", address: 'Kronprinsessegade 54, 1306, København', rating: 1)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566293065/Screenshot_2019-08-20_at_11.24.09_d2jfcu.png"
kebab_shop.save!

Review.new(user: "Martino", kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 10 ).save!
puts "Kebab Shop 9 created!"

puts "Creating Kebab Shop 10"
kebab_shop = KebabShop.new(name: "Beyti", address: 'Nørrebrogade 13, 2200, København', rating: 1)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566293225/Screenshot_2019-08-20_at_11.26.51_flrgxb.png"
kebab_shop.save!

Review.new(user: "Amanda", kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 6 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 11,  closing_hour: 6 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 12 ).save!
puts "Kebab Shop 10 created!"

puts "Creating Kebab Shop 11"
kebab_shop = KebabShop.new(name: "King Of Kebab Pizza & Grill", address: 'Nørrebrogade 20, 2200, København', rating: 5)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566293958/Screenshot_2019-08-20_at_11.38.56_abty03.png"
kebab_shop.save!

Review.new(user: "Huayra", kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 6 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 7 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 7 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 5 ).save!
puts "Kebab Shop 11 created!"

puts "Creating Kebab Shop 12"
kebab_shop = KebabShop.new(name: "Pizza Kebab House", address: 'Blågårdsgade 35, 2200, København', rating: 2)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566294211/Screenshot_2019-08-20_at_11.43.17_cvjimd.png"
kebab_shop.save!

Review.new(user: "Dorte", kebab_shop_id: kebab_shop.id, content:"content test", rating: 4).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 12,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 10 ).save!
puts "Kebab Shop 12 created!"

puts "Creating Kebab Shop 13"
kebab_shop = KebabShop.new(name: "Safir Kebab", address: 'Jagtvej 23, 2200, København', rating: 2)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566307379/Screenshot_2019-08-20_at_15.22.44_ugng6a.png"
kebab_shop.save!

Review.new(user: "Clinton", kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 12,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 12 ).save!
puts "Kebab Shop 13 created!"

puts "Creating Kebab Shop 14"
kebab_shop = KebabShop.new(name: "Den Grønne Shawarma", address: ' Falkoner Alle 26A, 2000, København', rating: 2)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566308036/Screenshot_2019-08-20_at_15.33.37_rzq9iu.png"
kebab_shop.save!

Review.new(user: "John", kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 10 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 11,  closing_hour: 10 ).save!
puts "Kebab Shop 14 created!"

puts "Creating Kebab Shop 15"
kebab_shop = KebabShop.new(name: "Oasen Kebab Pizza", address: 'Falkoner Alle 22, 2000, Frederiksberg', rating: 4)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566308842/Screenshot_2019-08-20_at_15.47.09_rpidub.png"
kebab_shop.save!

Review.new(user: "Danny", kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 10,  closing_hour: 3 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 10,  closing_hour: 5 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 10,  closing_hour: 3 ).save!
puts "Kebab Shop 15 created!"

puts "Creating Kebab Shop 16"
kebab_shop = KebabShop.new(name: "Falafelkælderen", address: 'Rantzausgade 14, 2200, København', rating: 2)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566309072/Screenshot_2019-08-20_at_15.50.52_alunwt.png"
kebab_shop.save!

Review.new(user: "Vanessa", kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 11,  closing_hour: 11 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 11 ).save!
puts "Kebab Shop 16 created!"

puts "Creating Kebab Shop 17"
kebab_shop = KebabShop.new(name: "Kebab Town", address: 'Falkoner Alle 44, 2000, Frederiksberg', rating: 2)
kebab_shop.remote_photo_url = "https://res.cloudinary.com/dtxjlqqqo/image/upload/v1566309239/Screenshot_2019-08-20_at_15.53.46_t0z4bk.png"
kebab_shop.save!

Review.new(user: "Vincent", kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 11,  closing_hour: 12 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 12,  closing_hour: 12 ).save!
puts "Kebab Shop 17 created!"
