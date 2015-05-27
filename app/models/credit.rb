class Credit < ActiveRecord::Base

  belongs_to :user

  validates :sum, numericality: { only_integer: true }, allow_blank: false
  validates :period, numericality: { only_integer: true }, inclusion: 1..240, allow_blank: false

end
