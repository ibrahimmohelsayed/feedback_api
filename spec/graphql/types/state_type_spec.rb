RSpec.describe Types::StateType do
  types = GraphQL::Define::TypeDefiner.instance

  it 'has an :id field of ID type' do
    expect(subject).to have_field(:id).that_returns(!types.ID)
  end

  it 'has an :device field of String type' do
    expect(subject).to have_field(:device).that_returns(!types.String)
  end

  it 'has an :os field of String type' do
    expect(subject).to have_field(:os).that_returns(!types.String)
  end

  it 'has an :memory field of Int type' do
    expect(subject).to have_field(:memory).that_returns(!types.Int)
  end

  it 'has an :storage field of Int type' do
    expect(subject).to have_field(:storage).that_returns(!types.Int)
  end

  it 'has an :feedback_id field of Int type' do
    expect(subject).to have_field(:feedback_id).that_returns(!types.ID)
  end
end