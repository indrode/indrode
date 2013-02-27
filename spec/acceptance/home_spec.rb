require 'acceptance_helper'

describe "Homepage" do
  it "should display 'indrode.com'" do
    visit '/'
    page.should have_content('indrode.com')
  end
end
