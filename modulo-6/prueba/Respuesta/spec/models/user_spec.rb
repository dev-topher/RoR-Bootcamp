require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns the role for a user' do
    usuario = User.create(
      email: 'profesor@admin.cl',
      password: 'password',
      password_confirmation: 'password',
      name: 'Israel'
    )
    expect (usuario.role).to eq (1)
  end
end
