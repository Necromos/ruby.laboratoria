class Anime < ActiveRecord::Base
  attr_accessible :noe, :title, :yop, :doc, :doe
  validates :noe, :length => { :minimum => 2, :maximum => 3}, :numericality => true, :presence => true
  validates :title, :uniqueness => true, :presence => true
  validates :yop, :inclusion => { :in => 1900...2012}, :numericality => true
end
