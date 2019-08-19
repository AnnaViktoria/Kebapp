puts "Destroying everything"

KebabShop.destroy_all
Review.destroy_all
Schedule.destroy_all

puts "Creating Kebab Shop 1"
kebab_shop = KebabShop.new(name: 'Shawarma Huset', address: 'Godthabsvej 5, 2000, Fredriksberg')
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 5).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 100000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 100000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 100000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 100000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 100000,  closing_hour: 50000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 100000,  closing_hour: 50000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 100000,  closing_hour: 30000 ).save!
puts "Kebab Shop 1 created!"

puts "Creating Kebab Shop 2"
kebab_shop = KebabShop.new(name: 'Kebab King', address: 'Mindstrasse 11, 2023, Kurlssberg')
kebab_shop.save!

puts "creating review kebab 2"
Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 3).save!

puts "Creating schedule kebab Shop 2"
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 90000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 90000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 90000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 90000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 120000,  closing_hour: 50000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 120000,  closing_hour: 20000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 120000,  closing_hour: 20000 ).save!
puts "Kebab Shop 2 created!"

puts "Creating Kebab Shop 3"
kebab_shop = KebabShop.new(name: 'Farafelle world', address: 'Norgate 18, 2011, Nemo')
kebab_shop.save!

Review.new(kebab_shop_id: kebab_shop.id, content:"content test", rating: 1).save!

Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "monday",    opening_hour: 120000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "tuesday",   opening_hour: 120000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "wednesday", opening_hour: 80000,  closing_hour: 240000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "thursday",  opening_hour: 120000,  closing_hour: 30000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "friday",    opening_hour: 80000,  closing_hour: 50000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "saturday",  opening_hour: 110000,  closing_hour: 220000 ).save!
Schedule.new(kebab_shop_id: kebab_shop.id, weekday: "sunday",    opening_hour: 110000,  closing_hour: 30000 ).save!
puts "Kebab Shop 3 created!"
