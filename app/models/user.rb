class User < ApplicationRecord
  has_secure_password


  validates :name, :presence => true, :uniqueness => true,
                                   :length => {:minimum => 3, :maximum => 20}

  validates :email, :presence => true, :uniqueness => true,
                              :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }

end
