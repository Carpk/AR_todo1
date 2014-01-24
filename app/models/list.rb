require_relative '../config/application'

class List << ActiveRecord::Base
  has_many :items
end