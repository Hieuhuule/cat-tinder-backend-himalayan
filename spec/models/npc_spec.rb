require 'rails_helper'

RSpec.describe Npc, type: :model do
  it 'should validate name' do
    npc = Npc.create
    expect(npc.errors[:name]).to_not be_empty
  end
  it 'should validate likes' do
    npc = Npc.create
    expect(npc.errors[:likes]).to_not be_empty
  end
  it 'should validate address' do
    npc = Npc.create
    expect(npc.errors[:address]).to_not be_empty
  end
  it 'should validate image' do
    npc = Npc.create
    expect(npc.errors[:image]).to_not be_empty
  end
  it 'is not valid if likes is less than 10 characters long' do
    rashad = Npc.create name: 'Rashad', address: '123 Pelican Town', likes: 'Food', image: 'Image'
    expect(rashad.errors[:likes]).to_not be_empty
  end
end