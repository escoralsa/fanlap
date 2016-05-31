require 'spec_helper'

describe "scores/edit" do
  before(:each) do
    @score = assign(:score, stub_model(Score,
      :month => "MyString",
      :year => 1,
      :score => 1.5,
      :student => nil
    ))
  end

  it "renders the edit score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", score_path(@score), "post" do
      assert_select "input#score_month[name=?]", "score[month]"
      assert_select "input#score_year[name=?]", "score[year]"
      assert_select "input#score_score[name=?]", "score[score]"
      assert_select "input#score_student[name=?]", "score[student]"
    end
  end
end
