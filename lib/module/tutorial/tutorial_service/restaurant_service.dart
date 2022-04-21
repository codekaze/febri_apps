class RestaurantService {
  Future<List> getRestaurants() async {
    return [
      {
        "restaurant_name": "Dx Terrascia",
        "address": "Bogor",
        "products": [
          {
            "product_name": "Teh Gelas",
            "price": 25,
            "stock": 50,
          },
          {
            "product_name": "Air Mineral",
            "price": 35,
            "stock": 40,
          },
          {
            "product_name": "Nasi Goreng",
            "price": 35,
            "stock": 20,
          }
        ],
      },
      {
        "restaurant_name": "FoodTraack",
        "address": "Bogor",
        "products": [
          {
            "product_name": "Teh Gelas",
            "price": 44,
            "stock": 50,
          },
          {
            "product_name": "Kopi Jahe",
            "price": 35,
            "stock": 40,
          },
          {
            "product_name": "Capcay Goreng",
            "price": 35,
            "stock": 20,
          }
        ],
      },
      {
        "restaurant_name": "Strabuck",
        "address": "Bogor",
        "products": [
          {
            "product_name": "Frappucinno",
            "price": 25,
            "stock": 50,
          },
          {
            "product_name": "Capuccinno",
            "price": 35,
            "stock": 40,
          },
          {
            "product_name": "Vanila Blend",
            "price": 35,
            "stock": 20,
          }
        ],
      }
    ];
  }
}
