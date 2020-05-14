class Campaign < ApplicationRecord
  has_many :campaign_memberships, dependent: :destroy
  has_many :users, through: :campaign_memberships
  has_many :characters, through: :campaign_memberships
  belongs_to :owner, class_name: "User", foreign_key: :owner_id
end