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
    expect(rashad.errors[:likes]).to include ("is too short (minimum is 10 characters)")
  end
  it 'is not valid if name is less than 3 chracters long' do 
    le = Npc.create name: 'Le', address: '7 Mountain Rd', likes: 'Noodles', image: 'Image'
    expect(le.errors[:name]).to include ("is too short (minimum is 3 characters)")
  end
end