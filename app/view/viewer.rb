
class ListView
  def self.display_error
    raise ArgumentError, "Please choose to list, add, delete, or complete a task!!!"
  end

  def self.display_items(item_list)
    item_list.each {|item| puts "#{item.id})  #{status_box(item.status)} #{item.description}"}
  end

  def self.add_item_message(item)
    puts "#{item} has been added to your list!"
  end

  def self.delete_item_message(item_num)
    puts "Item number #{item_num} has been removed from your list."
  end



  def self.show_lists(lists)
    lists.each {|list| puts "#{list[0]}) #{list[1]}" }
  end

  def self.add_list_message(list)
    puts "#{list} has been created!  Stay on Target!"
  end

  def self.delete_list_message(list_num)
    puts "List number #{list_num} has been removed.  You're lazy!"
  end


  def self.complete_item_message(item_num)
    puts "Way to go! You have completed item number #{item_num}!"
  end

  def self.display_help
    puts "Nah, bro."
    sleep(5)
puts <<-STRING


JK!
-------------------------
Here are your options...
-------------------------
list_items
add_item
delete_item
complete_item
show_lists
add_list
delete_list
STRING
  end

  def self.header
    puts "MY TASK LIST:"
  end

  private

  def self.status_box(task_status)
    case task_status
    when nil then "[ ]"
    when "C" then "[X]"
    end
  end
end