puts "Destroying everything"

KebabShop.destroy_all

puts "Creating Kebab Shop 1"

kebab_shop = KebabShop.new(name: 'Shawarma Huset', price: 8, address: 'Godthabsvej 5, 2000, Fredriksberg')
kebab_shop.save!

# puts "Creating Creating Kebab Shop 2"
# kebab_shop = KebabShop.new(name: 'Den Gronne Shawarma', price: 10, address: 'Falkoner Alle 26A, 2000, Fredriksberg',  closing_time: '22:00:00' , start_time: '10:00:00' )
# kebab_shop.save!

# puts "Creating Creating Kebab Shop 3"
# kebab_shop = KebabShop.new(name: 'Safir Kebab', price: 89, address: 'Jagtvej 23, 2200, København',  closing_time: '23:00:00' , start_time: '11:00:00' )
# kebab_shop.save!

# puts "Creating Creating Kebab Shop 4"
# kebab_shop = KebabShop.new(name: 'Torvets Kebab', price: 2, address: 'Sankt Hans Torv 24, 2200, København',  closing_time: '00:00:00', start_time: '11:00:00')
# kebab_shop.save!

# puts "Creating Creating Kebab Shop 5"
# kebab_shop = KebabShop.new(name: 'Kebabistan', price: 15, address: 'Istegade 105, 1650, København',  closing_time: '01:00:00', start_time: '11:00:00' )
# kebab_shop.save!

# puts "Creating Creating Kebab Shop 6"
# kebab_shop = KebabShop.new(name: 'The Kebab', price: 29, address: 'Roskildevej 65, 2000 Fredriksberg',  closing_time: '21:00:00', start_time: '11:00:00')
# kebab_shop.save!

# puts "Creating Creating Kebab Shop 7"
# kebab_shop = KebabShop.new(name: 'Konak Kebab', price: 68, address: 'Norrebrogade 205, 2200, København',  closing_time: '23:00:00' , start_time: '12:00:00')
# kebab_shop.save!

# puts "Creating Creating Kebab Shop 8"
# kebab_shop = KebabShop.new(name: 'Kebab Town', price: 49, address: 'Falkoner Alle 44, 2000, København',  closing_time: '00:00:00', start_time: '11:00:00' )
# kebab_shop.save!

# puts "Creating Creating Kebab Shop 9"
# kebab_shop = KebabShop.new(name: 'Kebab House', price: 29, address: 'Gl Konglevej 102, 1850, Fredriksberg',  closing_time: '22:00:00' , start_time: '11:00:00' )
# kebab_shop.save!

# puts "Creating Creating Kebab Shop 10"
# kebab_shop = KebabShop.new(name: 'Durum Bar', price: 39, address: 'Norrebrogade 195, 2200, København',  closing_time: '00:00:00', start_time: '11:00:00' )
# kebab_shop.save!
