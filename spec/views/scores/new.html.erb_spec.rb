require 'spec_helper'

describe "scores/new" do
  before(:each) do
    assign(:score, stub_model(Score,
      :month => "MyString",
      :year => 1,
      :score => 1.5,
      :student => nil
    ).as_new_record)
  end

  it "renders new score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scores_path, "post" do
      assert_select "input#score_month[name=?]", "score[month]"
      assert_select "input#score_year[name=?]", "score[year]"
      assert_select "input#score_score[name=?]", "score[score]"
      assert_select "input#score_student[name=?]", "score[student]"
    end
  end
end
