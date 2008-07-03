class User < ActiveRecord::Base
  def to_s
    name
  end
  
  validates_presence_of :name, :login, :password
  validates_length_of :login, :within => 5..16
  validates_uniqueness_of :name, :login
  validates_length_of :password, :within => 5..255
  validates_confirmation_of :password
  validates_inclusion_of :kind, :in => %w(administrador user)
end
