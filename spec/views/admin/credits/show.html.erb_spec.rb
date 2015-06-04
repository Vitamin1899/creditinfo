require 'rails_helper'

RSpec.describe "admin/credits/show", type: :view do
  before(:each) do
    @admin_credit = assign(:admin_credit, Admin::Credit.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
