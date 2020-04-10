# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all

# v1 = VendorSweet.create(sweet_id: Sweet.all.sample, vendor_id: Vendor.all.sample, price: 8)
# vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
# sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]


# vendors.each do |vendor|
#   Vendor.create(name: vendor)
# end

# sweets.each do |sweet|
#   Sweet.create(name: sweet)
# end

Vendor.create(name: "Jim")
Sweet.create(name "tim")

VendorSweet.create(sweet_id: Sweet.all.sample, vendor_id: Vendor.all.sample, price: 8)

# vendor1 = Vendor.create(name: "Chocolate")
# sweet1 = Sweet.create(name: "Chococloate_chip")
# vendorsweet1 = VendorSweet.create(sweet_id: Sweet.all.sample.id, vendor_id: Vendor.all.sample.id, price: 5)