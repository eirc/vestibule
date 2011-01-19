class Proposal < ActiveRecord::Base
  belongs_to :proposer, :class_name => 'User'

  validates :title, :presence => true

  def proposed_by?(account)
    proposer.account == account
  end
end