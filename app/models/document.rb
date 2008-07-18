class Document < ActiveRecord::Base
  validates_presence_of :title, :project_id
  
  belongs_to :project
  
  has_attachment :storage => :file_system, :max_size => 500.kilobytes, :path_prefix => 'public/uploads/documents'
  validates_as_attachment
end
