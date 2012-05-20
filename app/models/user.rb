class User < ActiveRecord::Base
  validates_presence_of :username
  acts_as_authentic
end
