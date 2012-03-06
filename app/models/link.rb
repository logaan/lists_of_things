class Link < ActiveRecord::Base
  validates_presence_of :parent, :child

  belongs_to :parent,
             :class_name => "Thing",
             :foreign_key => "parent_id",
             :counter_cache => :children_count
  belongs_to :child,
             :class_name => "Thing",
             :foreign_key => "child_id",
             :counter_cache => :parents_count
end
