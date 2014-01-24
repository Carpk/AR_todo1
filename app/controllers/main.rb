require_relative '../models/list'
require_relative '../models/item'
require_relative '../view/viewer'



case ARGV[0]
  when "list_items"
    task_list = List.list_all(ARGV[1])
    ListView.header
    ListView.display_list(task_list)
  when "add_item"
    Item.add(ARGV[1], ARGV[2])
    ListView.add_message(ARGV[2])
  when "delete_item"
    Item.delete(ARGV[1])
    ListView.delete_message(ARGV[1])
  when "complete_item"
    Item.complete(ARGV[1])
    ListView.check_message(ARGV[1])





  when "list_lists"
    all_lists= List.lists
    ListView.header
    ListView.display_lists(all_lists)
  when "add_list"
    List.add(ARGV[1])
    ListView.add_list_message(ARGV[1])
  when "delete_list"
    List.delete(ARGV[1])
    ListView.delete_message(ARGV[1])
  when "help"

  else
    ListView.display_error
end
