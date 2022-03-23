require 'rails_helper'

RSpec.describe 'the songs show page' do 

	it 'displays the song title' do
		artist = Artist.create!(name: 'X Jpan')
		song  = artist.songs.create!(title: "Endless Rain", length: 208, play_count: 100000000)
		song2  = artist.songs.create!(title: "Endless Snow", length: 208, play_count: 100000000)
		visit "/songs/#{song.id}"
		expect(page).to have_content(song.title)
		expect(page).to_not have_content(song2.title)
	end 


	it 'displays the name of artist for the song' do 
		artist = Artist.create!(name: 'X Jpan')
		song  = artist.songs.create!(title: "Endless Rain", length: 208, play_count: 100000000)
		song2  = artist.songs.create!(title: "Endless Snow", length: 208, play_count: 100000000)
		visit "/songs/#{song.id}"
		expect(page).to have_content(artist.name)
		save_and_open_page	
	end 


end 