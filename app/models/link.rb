class Link < ActiveRecord::Base
  validates_presence_of :parent, :child

  belongs_to :parent,
             :class_name => "Thing",
             :foreign_key => "parent_id"
  belongs_to :child,
             :class_name => "Thing",
             :foreign_key => "child_id"
end
