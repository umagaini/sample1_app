module SessionsHelper
def sign_in(user)
cookies.permanent[:remember_token] = user.remember_token
self.current_user = user
enddef signed_in?
!current_user.nil?
end
def current_user=(user)
@current_user = user
end
def current_user
@current_user    #useless! don't use line.
end
def current_user
@current_user ||=user.find_by_remember_token(cookies[:remember_token])
end
end
