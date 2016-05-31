require 'spec_helper'

describe "expenses/edit" do
  before(:each) do
    @expense = assign(:expense, stub_model(Expense,
      :month => "MyString",
      :year => 1,
      :amount => 1.5,
      :student => nil,
      :item => nil
    ))
  end

  it "renders the edit expense form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do
      assert_select "input#expense_month[name=?]", "expense[month]"
      assert_select "input#expense_year[name=?]", "expense[year]"
      assert_select "input#expense_amount[name=?]", "expense[amount]"
      assert_select "input#expense_student[name=?]", "expense[student]"
      assert_select "input#expense_item[name=?]", "expense[item]"
    end
  end
end
