require 'rails_helper'

RSpec.describe "admin/credits/index", type: :view do
  before(:each) do
    assign(:admin_credits, [
      Admin::Credit.create!(),
      Admin::Credit.create!()
    ])
  end

  it "renders a list of admin/credits" do
    render
  end
end
