require 'rails_helper'

RSpec.describe "admin/credits/edit", type: :view do
  before(:each) do
    @admin_credit = assign(:admin_credit, Admin::Credit.create!())
  end

  it "renders the edit admin_credit form" do
    render

    assert_select "form[action=?][method=?]", admin_credit_path(@admin_credit), "post" do
    end
  end
end
