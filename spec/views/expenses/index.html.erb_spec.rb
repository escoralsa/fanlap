require 'spec_helper'

describe "expenses/index" do
  before(:each) do
    assign(:expenses, [
      stub_model(Expense,
        :month => "Month",
        :year => 1,
        :amount => 1.5,
        :student => nil,
        :item => nil
      ),
      stub_model(Expense,
        :month => "Month",
        :year => 1,
        :amount => 1.5,
        :student => nil,
        :item => nil
      )
    ])
  end

  it "renders a list of expenses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Month".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
