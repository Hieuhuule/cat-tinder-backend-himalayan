require 'rails_helper'

RSpec.describe Character, type: :model do
  it 'checking to make sure there is a name for npc' do
    npc = Npc.create(
      address: 'Eastern Cave',
      likes: 'lotsofthingsheretoeat',
      image: 'string'
    )

    expect(npc.errors[:name]).to_not be_empty
  end

  it 'checking to make sure there is an address for npc' do
    npc = Npc.create(
      name: 'string',
      likes: 'lotsofthingsheretoeat',
      image: 'string'
    )

    expect(npc.errors[:address]).to_not be_empty
  end

  it 'checking to make sure there are likes for npc' do
    npc = Npc.create(
      name: 'string',
      address: 'eastern cave',
      image: 'string'
    )

    expect(npc.errors[:likes]).to_not be_empty
  end

  it 'checking to make sure there is an image for npc' do
    npc = Npc.create(
      name: 'string',
      likes: 'lotsofthingsheretoeat',
      address: 'string'
    )

    expect(npc.errors[:image]).to_not be_empty
  end

  it 'checking to make sure that likes are at least 10 characters long for npc' do
    npc = Npc.create(
      name: 'string',
      likes: 'lots',
      address: 'string'
    )

    expect(npc.errors[:likes]).to_not be_empty 
    expect(character.errors[:likes]).to include("is too short (minimum is 10 characters)")
  end

  it 'checking to make sure that name is at least 3 characters long for npc' do
    npc = Npc.create(
      name: 'Le',
      likes: 'lotsofthingsheretoeat',
      address: 'string'
    )

    expect(npc.errors[:name]).to_not be_empty 
    expect(npc.errors[:name]).to include("is too short (minimum is 3 characters)")
  end
end
