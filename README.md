
# Shopify Backend 

## Getting Started
* ruby bin\rails server

### API end points

* Add New Product
  * http://localhost:3000/products/new

* List All Products (Include products with empty inventory as well) 
  * http://localhost:3000/products?return_Empty_Inventory=true
       
* List All Products (Only products with available inventory )
  * http://localhost:3000/products?return_Empty_Inventory=false **OR**
  * http://localhost:3000/products
  
* Show Product Description
  * http://localhost:3000/products/1 **( 1 is product_id)**


