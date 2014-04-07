require 'spec_helper'

describe User do
before do
@user = user.new(name: "example user",email: "user@example.com",password: "foobar",password_confirmation: "foobar")
end
  subject {@users }
  describe "remember token" do
 before { @user.save }
 its(:remember_token) { should_not be_blank }
end
end
