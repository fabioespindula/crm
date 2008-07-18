class User < ActiveRecord::Base
  cattr_accessor :current_user_id 
  
  def to_s
    name
  end
  
  has_many :tasks, :foreign_key => "owner_id" 
  has_many :contracts, :foreign_key => "leader_id"
  
  validates_presence_of :name, :login, :password
  validates_length_of :login, :within => 5..16
  validates_uniqueness_of :name, :login
  validates_length_of :password, :within => 5..255
  validates_confirmation_of :password
  validates_inclusion_of :kind, :in => %w(administrador user)
  
  def password=(p) 
    self[:password] = p unless p.blank? 
  end
end
