require "rails_helper"

feature 'User index page', :devide do
  scenario 'Usuario ve su correo electronico' do
    user = FactoryGirl.create(:user, :admin)
    login_as(user, scope: :user)
    visit users_path
    expect(page).to have_content user.email
  end
end
