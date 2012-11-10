require 'spec_helper'

describe "animes/show" do
  before(:each) do
    @anime = assign(:anime, stub_model(Anime,
      :title => "Title",
      :yop => 1,
      :noe => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
