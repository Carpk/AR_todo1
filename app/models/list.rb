require_relative '../../config/application'

class List < ActiveRecord::Base
  has_many :items

  def self.list_all(list_num)
    List.find_by(id: list_num).items.not_deleted
  end
end