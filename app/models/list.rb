require_relative '../../config/application'

class List < ActiveRecord::Base
  has_many :items

  def self.list_all(list_num)
    List.find_by(id: list_num).items.not_deleted
  end

  def completed?
    items_completed = self.items.where('status = ?','C').count
    total_items = self.items.where('status is null or status = ?','C' ).count
    items_completed == total_items
  end

  def check_complete
    if self.completed?
      self.status = 'C'
      self.completion_date = Date.today
      self.save
    end
  end

  def self.lists
    lists = []
    List.all.each { |l| lists << [l.id, l.title] if l.status != 'D'}
    lists
  end

  def self.add(title)
    List.create(title: title)
  end

  def self.delete(list_id)
    list = List.find_by(id: list_id)
    list.items.each{ |item| item.delete }
    list.status = 'D'
    list.save
  end
end