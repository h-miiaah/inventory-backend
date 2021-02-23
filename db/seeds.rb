# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

box1 = Box.create(name: 'Box 1', amount: 1)

item1 = Item.create(box_id: 1, description: 'Amazing Cup', style: 'AMZNGCP', color: 'Neon Green', size: 'OS', quantity: 1, image_url: 'https://res.cloudinary.com/forallpromos/image/fetch/f_auto/https://www.4allpromos.com/sites/default/files/imagecache/420x420/images/products/3620/VirtualSample%2870%29.png', kind: 'add')

item2 = Item.create(box_id: 1, description: 'Bouncy Basketball', style: 'BNCYBBL', color: 'ORANGE', size: 'OS', quantity: 1, image_url: 'https://d39qw52yhr4bcj.cloudfront.net/catalog/product/cache/9/small_image/200x200/9df78eab33525d08d6e5fb8d27136e95/b/0/b08lp1t3ht.jpg', kind: 'add')

item3 = Item.create(box_id: 1, description: 'Wireless Earphones', style: 'WRLSERPHNS', color: 'White', size: 'OS', quantity: 1, image_url: 'https://images.mobilefun.co.uk/graphics/200pixelp/82571.jpg', kind: 'add')