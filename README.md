
# Shopify Backend 

## Getting Started
* ruby bin\rails server

### API end points

* List All Products (Include products with empty inventory as well) 
  * http://localhost:3000/products?return_Empty_Inventory=true
       
* List All Products (Only products with available inventory )
  * http://localhost:3000/products?return_Empty_Inventory=false **OR**
  * http://localhost:3000/products


