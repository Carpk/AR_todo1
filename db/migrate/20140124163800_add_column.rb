
require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to

class AddColumn < ActiveRecord::Migration
  def change
    add_column :lists, :status, :string
  end
end