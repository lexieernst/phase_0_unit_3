# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Alexis Ernst
# 2. Christian Moon
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to display the items on the list
# As a user, I want to add an item
# As a user, I want to remove an item
# As a user, I want to total the items
# As a user, I want to see if I already have an item
# As a user, I want to see if I have enough of a specific item
 
# Pseudocode
# create a class for items so that we can get them individually
# create instance variables for each parameter (name, price, quantity)
# create another class, GroceryList
# instance methods: add, remove, display, total items, total costs, included?
# 
# 
 
 
# Your fabulous code goes here....

class Item
  attr_reader :name
  attr_accessor :quantity
  def initialize(name, price, quantity=1)
    @name=name
    @price=price
    @quantity=quantity
  end
  
  # def name
  #   @name
  # end
  
  # def quantity
  #   @quantity
  # end
  
  # def quantity=(new_quantity)
  #   @quantity = new_quantity
  # end
  
end

class GroceryList
  def initialize
    @list = []
  end
  
  def add(*item)
    @list << item
  end
  
  def remove(*item)
   if @list.include?(item)
      @list.delete(item)
    else 
      puts "This item is not on the list"
    end
  end
  
  def included?(name)
    @list.flatten!
    @list.each do |item| 
      if item.name == name 
        return true
      end
    end
    false
  end
    
  def update_quantity(item, quantity)
    @list.flatten!
    if @list.include?(item)
      item.quantity = quantity
    end
  end
  
end


# DRIVER CODE GOES HERE. 

steak = Item.new("steak", 5.99, 2)
blue = Item.new(blue, 2, 2)
blah = Item.new(blah, 2, 2)
list = GroceryList.new
list.add(blah, blue)
list.add(steak)
list.update_quantity(blah, 5)
blah.quantity
# steak.name
# list.included?("steak")
# steak.name

 #Release 5: [Reflect]

#This by far was the most productive GPS that I have had. 
#I learned a lot of new information, especially when to 
#define certain instance methods. This was shown to me by 
#having two instance methods... quantity and quantity=new_quantity.
#Maria further explained this in an email after our GPS. It is
#because the interpreter sucks the whitespace from between the method
#name "quantity" and the equals sign, so it thinks you are calling
#the method quantity= as opposed to just quantity. Of course,
#the attr_reader takes care of all of this, it was really helpful 
#seeing this all come to life from scratch. I also learned a lot
#about include?. Certain things were not passing with destructive
#methods, etc. and it was intereting fixing these issues. In all,
#I really feel I learned a lot! :)