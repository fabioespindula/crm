class Contract < ActiveRecord::Base
  belongs_to :project
  belongs_to :leader, :foreign_key => "leader_id", :class_name => "User"
  
  validates_presence_of :name, :code, :desc, :started_at, :leader_id, :project_id
  validates_inclusion_of :status, :in => %w(prospecting accepted canceled)
end
