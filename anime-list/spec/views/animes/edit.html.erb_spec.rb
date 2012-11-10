require 'spec_helper'

describe "animes/edit" do
  before(:each) do
    @anime = assign(:anime, stub_model(Anime,
      :title => "MyString",
      :yop => 1,
      :noe => 1
    ))
  end

  it "renders the edit anime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animes_path(@anime), :method => "post" do
      assert_select "input#anime_title", :name => "anime[title]"
      assert_select "input#anime_yop", :name => "anime[yop]"
      assert_select "input#anime_noe", :name => "anime[noe]"
    end
  end
end
