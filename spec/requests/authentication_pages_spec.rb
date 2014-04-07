require 'spec_helper'

describe "Authentication" do
  subject { page }
  describe "signin page" do
    before { visit signin_path }
  describe "with valid information"do
  let(:user) { factorygirl.create(:user) }
  before do
  fill_in "email", with: user.email
  fill_in "password", with: user.password
  click_button "sidn in"
end
it { should have_selector('title', text: user.name) }
it { should have_link('profile',href: user_path(user) ) }
it { should have_link('sign out',href:signout_path) }
it { should_not have_link('sign in',href: signin_path) }
end
end
end
