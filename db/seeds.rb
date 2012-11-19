Category.destroy_all
Item.destroy_all

menu_categories = { "Starters" => [[7, 'Tiny Hot Dogs'], [5, 'Onion Strands'], [6, 'Flatbread']], 
  "Entrees" => [[27, 'Steak'], [17, 'Aha Tuna Plate'], [22, 'Chicken Caesar Salad']], 
  "Drinks" => [[5, 'Soft Drinks'], [6, 'Beer']], 
  "Desserts" => [[8, 'Strawberry Cheescake'], [6, 'M&Ms']]
}

menu_categories.each do |category_name, menu_items|
  category = Category.create name: category_name, photo_filename: "#{category_name.downcase}.jpg"
  menu_items.each do |menu_item|
    category.items.create price: menu_item.first, name: menu_item.last
  end
end

# ["Starters", "Entrees", "Drinks", "Desserts"].each do |category_name|
#   Category.create name: category_name, photo_filename: "#{category_name.downcase}.jpg"
# end

puts "#{Category.count} categories are now in the database."
puts "#{Item.count} items are now in the database."

