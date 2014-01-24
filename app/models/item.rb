require_relative '../config/application'

class Item << ActiveRecord::Base
  belongs_to :list
end