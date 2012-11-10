require 'spec_helper'

describe "animes/index" do
  before(:each) do
    assign(:animes, [
      stub_model(Anime,
        :title => "Title",
        :yop => 1,
        :noe => 2
      ),
      stub_model(Anime,
        :title => "Title",
        :yop => 1,
        :noe => 2
      )
    ])
  end

  it "renders a list of animes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
