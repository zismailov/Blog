describe Category  do
  it 'has a valid factory' do
    expect(build(:category)).to be_valid
  end

  it 'invalid without name' do
    expect(build(:category, name: nil)).to_not be_valid
  end

  it 'invalid with blank name' do
    expect(build(:category, name: '')).to_not be_valid
  end
end
