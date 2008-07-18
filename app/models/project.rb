class Project < ActiveRecord::Base
  named_scope :actives, :conditions => {:active => true}
  named_scope :inactives, :conditions => {:active => false}
  
  belongs_to :customer
  has_many :contracts
  has_many :tasks
  has_many :implementors, :through => :tasks, :source => :owner
  has_many :documents
  
  has_and_belongs_to_many :members, :class_name => "User", :join_table => "projects_members", :association_foreign_key => "member_id"
  
  def to_s
    name
  end
  
  validates_presence_of :name, :customer_id
  validates_uniqueness_of :name
end
