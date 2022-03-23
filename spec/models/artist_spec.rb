require 'rails_helper'

RSpec.describe Artist, type: :model do 

	it {should have_many :songs}

	describe 'instance methods' do 
	before :each do 
		@prince = Artist.create!(name: 'Prince')
		@purple = @prince.songs.create!(title: 'Purple Rain', length:845, play_count:8514)
		@beret = @prince.songs.create!(title: 'Raspberry Beret', length:465, play_count:6455)
		@beret = @prince.songs.create!(title: 'Another prince song', length:2, play_count:6455)

	end
		describe '#average_song_length' do 
			it 'returns the avverage song length' do 
				expect(@prince.average_song_length.round(2)).to eq(437.33)

			end 

		end 
	end 

end 