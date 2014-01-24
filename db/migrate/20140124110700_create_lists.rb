
require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to

class CreateLists < ActiveRecord::Migration
  def change

    create_table :lists do |t|
      t.string :title
      t.date :completion_date

      t.timestamps
    end

    create_table :items do |t|
      t.string :description
      t.string :status
      t.date :completion_date
      t.integer :list_id

      t.timestamps
    end
  end
end