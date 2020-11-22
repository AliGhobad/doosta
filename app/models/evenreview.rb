class Evenreview < ApplicationRecord
  belongs_to :event
  belongs_to :user, polymorphic: true
end
