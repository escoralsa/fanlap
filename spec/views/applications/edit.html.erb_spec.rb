require 'spec_helper'

describe "applications/edit" do
  before(:each) do
    @application = assign(:application, stub_model(Application,
      :school_name => "MyString",
      :school_year => "MyString",
      :grade => "MyString",
      :score => 1.5,
      :other_scholarship => false,
      :from => "MyString",
      :amount => 1.5,
      :approved => false,
      :notes => "MyText",
      :student => nil,
      :sponsor => nil
    ))
  end

  it "renders the edit application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", application_path(@application), "post" do
      assert_select "input#application_school_name[name=?]", "application[school_name]"
      assert_select "input#application_school_year[name=?]", "application[school_year]"
      assert_select "input#application_grade[name=?]", "application[grade]"
      assert_select "input#application_score[name=?]", "application[score]"
      assert_select "input#application_other_scholarship[name=?]", "application[other_scholarship]"
      assert_select "input#application_from[name=?]", "application[from]"
      assert_select "input#application_amount[name=?]", "application[amount]"
      assert_select "input#application_approved[name=?]", "application[approved]"
      assert_select "textarea#application_notes[name=?]", "application[notes]"
      assert_select "input#application_student[name=?]", "application[student]"
      assert_select "input#application_sponsor[name=?]", "application[sponsor]"
    end
  end
end
