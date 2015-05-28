class User < ActiveRecord::Base
  HIGH_PER = 30
  LOW_PER = 20
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :credit, dependent: :destroy

  validates :profit, numericality: { only_integer: true }, allow_blank: false

  def percentage_credit
    profit > 10**7 ? LOW_PER : HIGH_PER
  end

end
