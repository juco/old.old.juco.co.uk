require 'spec_helper'

describe "Me" do

	base_title = 'Julian Cohen'

	describe "Home Page" do
		before { visit root_path }
		subject { page }

		it { should have_selector('title', text: base_title + ' - Home') }
		it { should have_selector('h1', text: 'Julian Cohen') }
		it { should have_selector('.photo-me') }

	end

end
