require 'rails_helper'

RSpec.describe User, type: :model do
  it '有 email' do
    user= User.new email: 'yunqi@qq.com'
    expect(user.email).to eq('yunqi@qq.com')
  end
end
