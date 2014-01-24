
class ListView

  def initialize
  end

  def display_error
    raise ArgumentError, "Please choose to list, add, delete, or complete a task!!!"
  end

  def self.display_list(task)
    task.each {|task| puts "#{task.id}) #{status_box(task.status)} #{task.description}"}
  end

  def self.status_box(task_status)
    case task_status
    when nil then "[ ]"
    when "C" then "[X]"
    end
  end

  def self.header
    puts "MY TASK LIST:"
  end

  def self.add_message(task)
    puts "#{task} has been added to your list!"
  end

  def self.delete_message(task_num)
    puts "Task number #{task_num} has been removed from your list."
  end

  def self.check_message(task_num)
    puts "Way to go! You have completed task number #{task_num}!"
  end

  def self.check_message(task_num)
    puts "Way to go! You have completed task number #{task_num}!"
  end
end