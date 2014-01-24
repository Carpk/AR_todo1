require_relative '../../config/application'

class Item < ActiveRecord::Base
  belongs_to :list

  def self.not_deleted
    Item.where('status is null or status = ?','C' )
  end
end