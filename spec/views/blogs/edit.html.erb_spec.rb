require 'spec_helper'

describe "blogs/edit" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :title => "MyString",
      :body => "MyText",
      :author => 1
    ))
  end

  it "renders the edit blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogs_path(@blog), :method => "post" do
      assert_select "input#blog_title", :name => "blog[title]"
      assert_select "textarea#blog_body", :name => "blog[body]"
      assert_select "input#blog_author", :name => "blog[author]"
    end
  end
end
