class Cat < ActiveRecord::Base
  attr_accessible :age, :birthdate, :color, :name, :sex
  belongs_to :neighborhood

  validates :age, :presence => true
end
