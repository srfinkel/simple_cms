class Page < ApplicationRecord

    belongs_to :subject, { :optional => false }
    has_and_belongs_to_many :admin_users
    has_many :sections

    scope :visible, lambda { where(:visible => true) }
    scope :invisible, lambda { where(:visible => false) }
    scope :sorted, lambda { order("position ASC") }
end
