Product.create(name: "chocolates", price: 4, description: "box of chocolates", supplier_id: 1, inventory: 10)

Product.create(name: "swell bottle", price: 10, description: "swell bottle, dark gray", supplier_id: 3, inventory: 10)

Product.create(name: "test", price: 10, description: "test", supplier_id: 3, inventory: 10)

Product.create(name: "Car Keys", price: 2, description: "leather key chain", supplier_id: 3, inventory: 10)

Product.create(name: "Scented Candle", price: 25, description: "Cinammon Scented Candle", supplier_id: 3, inventory: 10)

Supplier.create(name: "Nike", email: "nike@gmail.com", phone_number: "314-622-8433")

Supplier.create(name: "Addidas", email: "addidas@gmail.com", phone_number: "314-622-8432")

Supplier.create(name: "Lululemon", email: "lululemon@gmail.com", phone_number: "314-622-5433")

Image.create(url: "https://www.thespruceeats.com/thmb/eEhUUpSnXQCOV_nPMFLktfSui3k=/940x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chocolate_hero1-d62e5444a8734f8d8fe91f5631d51ca5.jpg", product_id: 1)

Image.create(url: "https://d34kame2p3gj5k.cloudfront.net/media/uploads/2021/11/10065943/20210521_SHOT_39_0009-3-1-2.png", product_id: 2)

Image.create(url: "https://www.leatherology.com/media/webImg/Hotel-Keychain-Yellow-747-309_fullsize.jpg?width=1100", product_id: 3)

Image.create(url: "https://m.media-amazon.com/images/I/81cLTxfYsTL._AC_SX679_.jpg", product_id: 4)

Order.create(user_id: 1, product_id: 1, quantity: 2)


User.create(
  name: "Sam Bates",
  email: "Sam@test.com",
  password: "password1",
  password_confirmation: "password1")