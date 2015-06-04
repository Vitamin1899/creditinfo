require 'rails_helper'

RSpec.describe "admin/credits/new", type: :view do
  before(:each) do
    assign(:admin_credit, Admin::Credit.new())
  end

  it "renders new admin_credit form" do
    render

    assert_select "form[action=?][method=?]", admin_credits_path, "post" do
    end
  end
end
