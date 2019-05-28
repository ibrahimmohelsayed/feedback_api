RSpec.describe Types::FeedbackType do
  types = GraphQL::Define::TypeDefiner.instance

  it 'has an :id field of ID type' do
    expect(subject).to have_field(:id).that_returns(!types.ID)
  end

  it 'has an :company_token field of String type' do
    expect(subject).to have_field(:company_token).that_returns(!types.String)
  end

  it 'has an :number field of Int type' do
    expect(subject).to have_field(:number).that_returns(!types.Int)
  end

  it 'has an :priority field of Int type' do
    expect(subject).to have_field(:priority).that_returns(!types.Int)
  end
end
