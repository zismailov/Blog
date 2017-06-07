describe Comment do
  it 'has a valid factory' do
    expect(build(:comment)).to be_valid
  end

  it 'invalid without a content' do
    expect(build(:comment, content: nil)).to_not be_valid
  end

  it 'invalid with blank content' do
    expect(build(:comment, content: '')).to_not be_valid
  end
end
