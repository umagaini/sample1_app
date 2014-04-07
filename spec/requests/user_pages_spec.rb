require 'spec_helper'

describe "User Pages" do
subject {page}
    describe "signup" do
    before { visit signup_path }
    let(:submit) { "create my account" }   
    describe "with invalid information" do
      it "should not create a user" do
        expect { click button submit }.not to change(User, :count)
      end
    end
    describe"with valid information" do
    before do
    fill_in  "name" ,                with:  "uma"
    fill_in  "email",                with:  "umagaini.mail@gmail.com"
    fill_in  "password",              with:  "umagaini"
    fill_in  "confirmation",          with:  "umagaini"
  end
  it "should create a user" do
  expect { click_button submit } .to change(user, :count) .by(1)
     end
end
end
end
