require 'rails_helper'

describe User do

  it "calculates the percentage of the credit" do

    user1 = User.new(profit: 10000001)
    user2 = User.new(profit: 5000000)

    expect(user1.percentage_credit).to eq(20)
    expect(user2.percentage_credit).to eq(30)

  end

end
