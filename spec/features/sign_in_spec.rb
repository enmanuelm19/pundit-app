require "rails_helper"

  feature 'Sign in', :devise do
    scenario 'Usuario no puede iniciar sesion si no esta registrado' do
      signin('prueba1@example.com', 'password')
      expect(page).to have_content 'Invalid email or password.'
    end

    scenario 'Usuario puede iniciar sesion con credenciales validas' do
      user = FactoryGirl.create(:user)
      signin(user.email, user.password)
      expect(page).to have_content 'Signed in successfully.'
    end

    scenario 'Usuario no puede iniciar sesion con email invalido' do
      user = FactoryGirl.create(:user)
      signin('prueba2@email.com', user.password)
      expect(page).to have_content 'Invalid email or password.'
    end

    scenario 'Usuario no puede iniciar sesion con password invalido' do
      user = FactoryGirl.create(:user)
      signin(user.email, 'invalidpassword')
      expect(page).to have_content 'Invalid email or password.'
    end
  end
