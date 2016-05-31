require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :st_number => 1,
      :last_name => "MyString",
      :slast_name => "MyString",
      :names => "MyString",
      :gender => "MyString",
      :address => "MyText",
      :map_link => "MyString",
      :phone => "MyString",
      :father_name => "MyString",
      :father_work => "MyString",
      :mother_name => "MyString",
      :mother_work => "MyString",
      :sibling => 1,
      :colonia => "MyString",
      :city => "MyString",
      :zip_code => "MyString",
      :foto => "MyString",
      :shoe_size => "MyString",
      :tshirt_size => "MyString",
      :email => "MyString",
      :profession => "MyString",
      :notes => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students_path, "post" do
      assert_select "input#student_st_number[name=?]", "student[st_number]"
      assert_select "input#student_last_name[name=?]", "student[last_name]"
      assert_select "input#student_slast_name[name=?]", "student[slast_name]"
      assert_select "input#student_names[name=?]", "student[names]"
      assert_select "input#student_gender[name=?]", "student[gender]"
      assert_select "textarea#student_address[name=?]", "student[address]"
      assert_select "input#student_map_link[name=?]", "student[map_link]"
      assert_select "input#student_phone[name=?]", "student[phone]"
      assert_select "input#student_father_name[name=?]", "student[father_name]"
      assert_select "input#student_father_work[name=?]", "student[father_work]"
      assert_select "input#student_mother_name[name=?]", "student[mother_name]"
      assert_select "input#student_mother_work[name=?]", "student[mother_work]"
      assert_select "input#student_sibling[name=?]", "student[sibling]"
      assert_select "input#student_colonia[name=?]", "student[colonia]"
      assert_select "input#student_city[name=?]", "student[city]"
      assert_select "input#student_zip_code[name=?]", "student[zip_code]"
      assert_select "input#student_foto[name=?]", "student[foto]"
      assert_select "input#student_shoe_size[name=?]", "student[shoe_size]"
      assert_select "input#student_tshirt_size[name=?]", "student[tshirt_size]"
      assert_select "input#student_email[name=?]", "student[email]"
      assert_select "input#student_profession[name=?]", "student[profession]"
      assert_select "input#student_notes[name=?]", "student[notes]"
    end
  end
end
