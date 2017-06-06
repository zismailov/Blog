describe User do

  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it { should respond_to(:email) }

  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  it "invalid without an email" do
    expect(build(:user, email: nil)).to_not be_valid
  end

  it "invalid without a password" do
    expect(build(:user, password: nil)).to_not be_valid
  end

end
