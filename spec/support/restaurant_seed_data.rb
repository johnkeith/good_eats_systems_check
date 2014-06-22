module RestaurantSeedData
  def populate_restaurants_table
    restaurants = [
      {
        name: "Restaurant 01", 
        address: "123 Road",
        city: "Boston", 
        zipcode: "12345",
        description: "Milkshakes!",
        catagory: "Quick Eats"
      },
        {
        name: "Restaurant 02", 
        address: "123 Road",
        city: "Boston", 
        zipcode: "12345",
        description: "Milkshakes!",
        catagory: "Quick Eats"
      },
        {
        name: "Restaurant 03", 
        address: "123 Road",
        city: "Boston", 
        zipcode: "12345",
        description: "Milkshakes!",
        catagory: "Quick Eats"
      },
        {
        name: "Restaurant 04", 
        address: "123 Road",
        city: "Boston", 
        zipcode: "12345",
        description: "Milkshakes!",
        catagory: "Quick Eats"
      },
        {
        name: "Restaurant 05", 
        address: "123 Road",
        city: "Boston", 
        zipcode: "12345",
        description: "Milkshakes!",
        catagory: "Quick Eats"
      },
        {
        name: "Restaurant 06", 
        address: "123 Road",
        city: "Boston", 
        zipcode: "12345",
        description: "Milkshakes!",
        catagory: "Quick Eats"
      },
          {
        name: "Restaurant 07", 
        address: "123 Road",
        city: "Boston", 
        zipcode: "12345",
        description: "Milkshakes!",
        catagory: "Quick Eats"
      },
          {
        name: "Restaurant 08", 
        address: "123 Road",
        city: "Boston", 
        zipcode: "12345",
        description: "Milkshakes!",
        catagory: "Quick Eats"
      },
          {
        name: "Restaurant 09", 
        address: "123 Road",
        city: "Boston", 
        zipcode: "12345",
        description: "Milkshakes!",
        catagory: "Quick Eats"
      },
          {
        name: "Restaurant 10", 
        address: "123 Road",
        city: "Boston", 
        zipcode: "12345",
        description: "Milkshakes!",
        catagory: "Quick Eats"
      }
    ]

    restaurants.each do |restaurant|
      Restaurant.create(restaurant)
    end
  end
end
