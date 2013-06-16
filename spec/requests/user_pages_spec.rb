require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }  # using just 'user' core-dumps ruby!
    before { visit user_path(user) }  # not '@user'?

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end
  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end

end
