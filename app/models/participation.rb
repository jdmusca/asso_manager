class Participation < ApplicationRecord
  belongs_to :evenement
  belongs_to :membership
end
