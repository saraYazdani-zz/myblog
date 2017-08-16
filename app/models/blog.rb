class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :votes, dependent: :destroy

  def voted(user)
    self.votes.where(user_id: [user.id]).any?
  end 
end
