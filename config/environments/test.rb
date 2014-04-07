Sample1App::Application.configure do
  # Speed up tests by lowering BCrypt's cost function.
  require 'bcrypt'
  silence warnings do
    BCrypt::Engine::DEFAULT COST = BCrypt::Engine::MIN COST
  end
end

  
