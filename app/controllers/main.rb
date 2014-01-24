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
  task_list.add(ARGV[1])
  ListView.add_message(ARGV[1])
when "delete"
  task_list.delete(ARGV[1])
  ListView.delete_message(ARGV[1])
when "complete"
  task_list.check_off(ARGV[1])
  ListView.check_message(ARGV[1])
end
