class Customer < ActiveRecord::Base
  include CRM::Auditing
  
  has_many :projects, :dependent => :destroy
  has_many :contracts, :through => :projects
  
  def to_s
    name
  end
  
  validates_presence_of :name, :desc
  validates_uniqueness_of :name
  validates_inclusion_of :rating, :in => 1..5
  
  validates_numericality_of :phone_country_code
  validates_numericality_of :phone_area_code
  validates_format_of :phone_number, :with => /^(\d|\s)*$/

  composed_of :phone, :class_name => "Phone", :mapping => [%w(phone_country_code), %(phone_area_code), %(phone_number)]
end
