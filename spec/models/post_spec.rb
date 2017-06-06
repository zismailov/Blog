describe Post do

  it "has a valid factory" do
    expect(build(:post)).to be_valid
  end

  it "is invalid without a title" do
    expect(build(:post, :title_nil)).to_not be_valid
  end

  it "is invalid without a content" do
    expect(build(:post, :content_nil)).to_not be_valid
  end

  it "is invalid without an user" do
    expect(build(:post, user: nil)).to_not be_valid
  end

 end
