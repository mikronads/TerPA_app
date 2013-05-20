class Smartmodel < ActiveRecord::Base
  attr_accessible :text, :timesend, :title
  
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
end
