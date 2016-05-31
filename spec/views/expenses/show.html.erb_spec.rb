require 'spec_helper'

describe "expenses/show" do
  before(:each) do
    @expense = assign(:expense, stub_model(Expense,
      :month => "Month",
      :year => 1,
      :amount => 1.5,
      :student => nil,
      :item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Month/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
