require 'spec_helper'

describe "animes/new" do
  before(:each) do
    assign(:anime, stub_model(Anime,
      :title => "MyString",
      :yop => 1,
      :noe => 1
    ).as_new_record)
  end

  it "renders new anime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animes_path, :method => "post" do
      assert_select "input#anime_title", :name => "anime[title]"
      assert_select "input#anime_yop", :name => "anime[yop]"
      assert_select "input#anime_noe", :name => "anime[noe]"
    end
  end
end
