require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :title => "MyString",
      :body => "MyText",
      :excerpt => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_title", :name => "project[title]"
      assert_select "textarea#project_body", :name => "project[body]"
      assert_select "input#project_excerpt", :name => "project[excerpt]"
      assert_select "input#project_location", :name => "project[location]"
    end
  end
end
