require 'rails_helper'

RSpec.describe Job, type: :model do
  it 'returns the status for a job' do
    trabajo = Job.create(
      title: 'Vacante de prueba',
      description: 'Vacante de puesto de trabajo de prueba'
    )
    expect (trabajo.status).to eq (1)
  end
end
