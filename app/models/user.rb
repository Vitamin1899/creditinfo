class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :credit, dependent: :destroy

  validates :profit, numericality: { only_integer: true }, allow_blank: false

  def percentage_credit
    Random.new.rand(20..40)
  end

end
