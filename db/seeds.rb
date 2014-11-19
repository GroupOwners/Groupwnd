# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)
 

Offer.create(name: "Free Cup of Starbucks", description:  "get a free cup of starbucks when...", image: "http://jacksonville.com/sites/default/files/imagecache/superphoto/photos/blogs/86/promo_StarbucksEspresso.jpg", sale_price_cents: "2000?", actual_price_cents: "5000")
Offer.create(name: "Free Dunkin Donuts", description:  "get a free dunkin donuts coupons when...", image: "http://noodleheads.typepad.com/.a/6a00d8345166c269e2011168a8f449970c-320pi", sale_price_cents: "2000?", actual_price_cents: "5000")
