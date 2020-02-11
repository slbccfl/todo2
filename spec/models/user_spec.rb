require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user) }
  let(:user_with_tasks) { build(:user_with_tasks) }

  it 'is invalid without firstname' do
    user.firstname = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without lastname' do
    user.lastname = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without email' do
    user.email = nil
    expect(user).not_to be_valid
  end
  
  it 'is invalid without unique email'

  it 'has many tasks' do
    expect(User.reflect_on_association(:tasks).macro).to eq(:has_many)
end

  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  it 'has many tasks' do
    expect(user_with_tasks.tasks.length).to eq(2)
  end

 it 'returns tasks due today' do
   task = user_with_tasks.tasks.first
   task.update(due_date: DateTime.now)
   expect(user_with_tasks.due_today.length).to eq(1)
 end

end