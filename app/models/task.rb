class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :owner, :foreign_key => "owner_id", :class_name => "User"
  
  def to_s
    name
  end
  
  named_scope :with_status, lambda { |s| { :conditions => { :status => s.to_s } } }
  
  validates_presence_of :title, :desc, :owner_id, :project_id
  validates_numericality_of :progress, :only_integer => true, :allow_nil => true
  validates_inclusion_of :status, :in => %w(open closed)
  validates_inclusion_of :priority, :in => %w(normal low high)
  
  after_create :register_create
  after_update :register_update
  
  def register_create
    Log.create(:message => "Task: '#{self.title}' created by '#{self.owner.name}'.")
  end
  
  def register_update
    Log.create(:message => "Task: '#{self.title}, update by '#{self.owner.name}'.")
  end
  
  class << self
    def find_high(options = {})
      with_priority("high") do
        find(:all, options)
      end
    end
      
    def find_low(options = {})
      with_priority("low") do
        find(:all, opitions)
      end
    end
    
    def find_normal(options = {})
      with_priority("normal") do
        find(:all, opitions)
      end
    end
    
    def with_priority(priority)
      with_scope(:find => {:conditions => {:priority => priority}}) do
        yield
      end
    end
    
  end
end
