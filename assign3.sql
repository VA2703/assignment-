1. Find all the information about each product
 db.products.find({})

2. Find the product price which are between 400 to 800

db.products.find({ product_price: { $gte: 400, $lte: 800 } })
 3.db.products.find({ product_price: { $not: { $gte: 400, $lte: 600 } } })
4.db.products.find({ product_price: { $gt: 500 } }).limit(4)
5.db.products.find({}, { product_name: 1, product_material: 1, _id: 0 })
6.db.products.find({ id: "10" })

7.db.products.find({}, { product_name: 1, product_material: 1, _id: 0 })
8.db.products.find({ product_material: "Soft" })
9.db.products.find({ product_color: "indigo", product_price: 492.00 })
10.db.products.deleteMany({ product_price: 28 })




