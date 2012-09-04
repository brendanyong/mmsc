require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :title => "MyString",
      :body => "MyText",
      :excerpt => "MyString",
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_title", :name => "project[title]"
      assert_select "textarea#project_body", :name => "project[body]"
      assert_select "input#project_excerpt", :name => "project[excerpt]"
      assert_select "input#project_location", :name => "project[location]"
    end
  end
end
