require 'spec_helper'

describe "Me" do

	describe "Home Page" do
		before { visit root_path }
		subject { page }

		it { should have_selector('title', text: 'Julian Cohen - juco') }
		it { should have_selector('h1', text: 'Julian Cohen') }

	end

end
