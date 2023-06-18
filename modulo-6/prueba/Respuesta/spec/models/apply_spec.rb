require 'rails_helper'

RSpec.describe Apply, type: :model do
  it 'returns the user_id for a application' do
    applicacion = Apply.create(
      application: 'Vacante de prueba',
      job_id: 1,
      user_id: 1
    )
    expect (applicacion.status).to eq (1)
  end
end
