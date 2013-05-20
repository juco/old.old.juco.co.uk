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

	describe "Homepage links" do
		before { visit root_path }

		it "Should link to Home" do
			click_link "Home"
			page.should have_selector('title', text: base_title + " - Home")
		end

		it "Should link to CV" do
			click_link "CV"
			page.should have_selector('title', text: base_title + ' - CV')
		end

		# it "Should link to Blog" do
		# 	click "Blog"
		# 	page.should have_selector('title', base_title + ' - Blog ')
		# end

		it "Should link to Contact" do
			click_link "Contact"
			page.should have_selector('title', text: base_title + ' - Contact')
		end
	end

	describe "CV Page" do
		before { visit cv_path }
		subject { page }
		it { should have_selector("title", text: base_title + ' - CV') }
		it { should have_selector("h1", text: "CV") }
	end

	describe "Contact page" do
		before { visit contact_path }
		subject { page }
		it { should have_selector("title", text: base_title + ' - Contact') }
		it { should have_selector("h1", text: "Contact Me") }
	end
end
