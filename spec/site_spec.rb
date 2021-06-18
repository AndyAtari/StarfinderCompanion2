require 'rails_helper'

RSpec.describe 'Site content', type: :system do
    it "shows react component button" do 
        visit root_path 
        expect(page).to have_content("Hello World")
    end
end

