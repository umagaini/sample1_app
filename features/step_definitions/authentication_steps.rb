# -*- coding: utf-8 -*-
Given /ˆa user visits the signin page$/ do
visit signin_path
end
When /ˆhe submits invalid signin information$/ do
click button "Sign in"
end
Then /ˆhe should see an error message$/ do
page.should have_selector('div.alert.alert-error')
end
Given /ˆthe user has an account$/ do
@user = User.create(name: "Example User", email: "user@example.com",
password: "foobar", password confirmation: "foobar")
end
When /ˆthe user submits valid signin information$/ do
fill_in "Email",
with: @user.email
fill_in "Password", with: @user.password
click button "Sign in"
end
Then /ˆhe should see his profile page$/ do
page.should have_selector('title', text: @user.name)
end
Then /ˆhe should see a signout lin_link('Sign out', href: signout path)
end
