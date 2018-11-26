require "./farm.rb"

class Input

  def main_menu
    loop do
      print_main_menu
      user_selected = gets.to_i
      next if user_selected < 1 user_selected > 5
      call_option(user_selected)
    end
  end

  def list_items
   puts "(1) field -> add a new field."
   puts "(2) harvest -> harvests crops and adds to total harvested."
   puts "(3) status -> displays some information about the farm."
   puts "(4) relax -> provides lovely descriptions of your fields"
   puts "(5) exit -> exists the progarm."
 end

 def call_option(user_input)
   case user_input
   when 1 then add_to_field
   when 2 then harvest_everything
   when 3 then farm_status
   when 4 then enjoy_the_beauty
   when 5 then exit
  end

  def add_to_field
   puts "What kind of field is it?"
   type = gets.chomp
   puts "How large is the field in hectare?"
   total_area = gets.chomp.to_i
   puts "What is a food per hectare?"
   food_per_hectare = gets.chomp.to_i
   puts "Added a #{type} field of #{total_area} with #{food_per_hectare}"
   new_field = Field.new(type,total_area, food_per_hectare)
   self.add(new_field)
 end

 def harvest_everything
    @total_amount_of_food.each do |field|
       puts "Harvesting #{total_food} food from #{field.type} #{field.total_area}"
    end
    puts "The farm has #{harvest} food so far"
  end

  def farm_status
    @total_amount_of_food.each do |field|
      puts "#{field.type} field is #{field.total_area} hectares."
    end
  end

  def enjoy_the_beauty()
    @total_amount_of_food.each do |field|
      if field.type == "corn"
        puts "#{field.total_area} hectares of beautiful #{field.type} fields."
      elsif field.type == "wheat"
        puts "#{field.total_area} hectares of beautiful #{field.type} fields."
      end
    end
  end
end
end
