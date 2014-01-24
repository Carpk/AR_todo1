
require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateLists < ActiveRecord::Migration
  def change

    CREATE_TABLE :lists do |t|
      t.string :title
      t.date :completion_date

      t.timestamps
    end

    CREATE_TABLE :items do |t|
      t.string :description
      t.string :status
      t.date :completion_date
      t.integer :list_id

      t.timestamps
    end
  end
end