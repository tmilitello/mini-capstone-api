Product.create(name: "chocolates", price: 4, image_url: "https://www.history.com/.image/t_share/MTc3OTk5Njc1MTU5MjI1OTY1/valentines-day-chocolate-gettyimages-923430892.jpg", description: "box of chocolates", supplier_id: 1)

Product.create(name: "swell bottle", price: 10, image_url: "https://d34kame2p3gj5k.cloudfront.net/media/uploads/2018/06/21141931/17oz-Onyx-bottle-front-cap-on.png", description: "swell bottle, dark gray", supplier_id: 3)


Product.create(name: "test", price: 10, image_url: "test", description: "test", supplier_id: 3)

Supplier.create(name: "Nike", email: "nike@gmail.com", phone_number: "314-622-8433")

Supplier.create(name: "Addidas", email: "addidas@gmail.com", phone_number: "314-622-8432")

Supplier.create(name: "Lululemon", email: "lululemon@gmail.com", phone_number: "314-622-5433")

Image.create(url: "https://www.thespruceeats.com/thmb/eEhUUpSnXQCOV_nPMFLktfSui3k=/940x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chocolate_hero1-d62e5444a8734f8d8fe91f5631d51ca5.jpg", product_id: 1)

Image.create(url: "https://d34kame2p3gj5k.cloudfront.net/media/uploads/2021/11/10065943/20210521_SHOT_39_0009-3-1-2.png", product_id: 2)