require_relative '../../config/application'

class Item < ActiveRecord::Base
  belongs_to :list

  def self.not_deleted
    Item.where('status is null or status = ?','C' )
  end

  def self.add(list_num, description)
    Item.create(description: description,
                list_id: list_num)
  end

  def self.delete(item_id)
    item = Item.find_by(id: item_id)
    item.status = 'D'
    item.save
  end

  def self.complete(item_id)
    item = Item.find_by(id: item_id)
    item.status = 'C'
    item.completion_date = Date.today
    item.save

    item.list.check_complete
  end
end