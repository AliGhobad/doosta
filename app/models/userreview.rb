class Userreview < ApplicationRecord
  belongs_to :user
  belongs_to :user, polymorphic: true
end
