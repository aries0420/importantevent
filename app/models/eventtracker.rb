class Eventtracker < ActiveRecord::Base
  attr_accessible :date, :description, :title
  default_scope :order => "date DESC"
end
