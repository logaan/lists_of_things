class Thing < ActiveRecord::Base
  validates_presence_of :name

  has_many :links_to_children,
           :class_name => "Link",
           :foreign_key => "parent_id"
  has_many :children,
           :through => :links_to_children

  has_many :links_to_parents,
           :class_name => "Link",
           :foreign_key => "child_id"
  has_many :parents,
           :through => :links_to_parents
end
