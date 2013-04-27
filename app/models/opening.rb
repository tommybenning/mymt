class Opening < ActiveRecord::Base
  belongs_to :user

  attr_accessible :start, :end
end
