
# Shopify Backend 

## Getting Started
* ruby bin\rails server

## Completed Challenge
- [x] API can server one product at a time or all products at same time
- [x] Every product has a title, price, and inventory_count
- [x] Supports a passing argument to fetch products either with an empty inventory or not empty inventory.
- [x] Products with no inventory cannot be purchased
- [x] It supports context of a simple shopping cart
- [x] Cart calculates total amount of products
- [x] Inventory only reduces after cart check out

### API end points

* Add New Product
  * http://localhost:3000/products/new

* List All Products (Include products with empty inventory as well) 
  * http://localhost:3000/products?return_Empty_Inventory=true
       
* List All Products (Only products with available inventory )
  * http://localhost:3000/products?return_Empty_Inventory=false **OR**
  * http://localhost:3000/products
  
* Show Product Description
  * http://localhost:3000/products/1 **(1 is product_id | it has to be product id)**
  
* Add Product to Cart
  * http://localhost:3000/purchases/new?product_id=1 **(1 is product_id | it has to be product id)**
  
* Show Shopify Shopping Cart and Products in Cart
  * http://localhost:3000/purchases

* Check out Cart
  * http://localhost:3000/purchases/check_out

