# Clear existing data
Food.destroy_all
Meal.destroy_all
Menu.destroy_all

# Create the menu
menu = Menu.create!(title: "Week 1 Meal Plan")

# Define days and meal labels
days = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
labels = ["Lunch", "Dinner"]

# Define example foods per meal label
sample_foods = {
  "Lunch" => [
    ["Grilled Cheese", "Tomato Soup", "Apple"],
    ["Turkey Sandwich", "Chips", "Pickle"],
    ["Caesar Salad", "Breadstick", "Lemon Water"],
    ["Veggie Wrap", "Carrot Sticks", "Fruit Cup"],
    ["BLT Sandwich", "Cucumber Slices", "Cookie"],
    ["Chicken Salad", "Crackers", "Iced Tea"],
    ["Mac & Cheese", "Steamed Broccoli", "Orange"]
  ],
  "Dinner" => [
    ["Spaghetti", "Garlic Bread", "Green Beans"],
    ["Tacos", "Rice", "Corn"],
    ["Baked Chicken", "Mashed Potatoes", "Peas"],
    ["Stir Fry", "Noodles", "Spring Roll"],
    ["Salmon", "Quinoa", "Asparagus"],
    ["Pizza", "Side Salad", "Brownie"],
    ["Beef Stew", "Roll", "Roasted Carrots"]
  ]
}

# Create meals and foods
days.each_with_index do |day, i|
  labels.each do |label|
    meal = menu.meals.create!(
      day: day,
      label: label
    )

    foods = sample_foods[label][i]
    foods.each do |food_name|
      meal.foods.create!(name: food_name)
    end
  end
end

puts "Seeded: #{Menu.count} menu(s), #{Meal.count} meals, #{Food.count} foods."
