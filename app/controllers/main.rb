require_relative '../models/list'
require_relative '../models/item'
require_relative '../view/viewer'



case ARGV[0]
when nil
  ListView.display_error
when "list"
  task_list = List.list_all(ARGV[1])
  ListView.header
  ListView.display_list(task_list)
when "add"
  Item.add(ARGV[1], ARGV[2])
  ListView.add_message(ARGV[2])
when "delete"
  Item.delete(ARGV[1])
  ListView.delete_message(ARGV[1])
when "complete"
  Item.complete(ARGV[1])
  ListView.check_message(ARGV[1])
end
