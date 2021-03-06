class SongsController < InheritedResources::Base
	require 'nokogiri'
	require 'open-uri'
	require 'pry'
  require 'soundcloud'

  before_action :authenticate_user!


  def index
  	@user = current_user
  	songs = @user.songs

  	songs.each do |song|
  		song_detail = SongDetail.find_or_initialize_by(song_id: song.id)

	  	# data = Nokogiri::HTML(open(song.url))
	  	# plays_count = data.search("meta[property='soundcloud:play_count']")[0].attributes["content"].value
	  	# likes_count = data.search("meta[property='soundcloud:like_count']")[0].attributes["content"].value
      # reposts_count = data.to_s.split("reposts_count")[2].split(":")[1].split(",")[0] rescue nil

      client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
      track_url = song.url
      track = client.get('/resolve', :url => track_url)

      plays_count = track.playback_count
      likes_count = track.favoritings_count
      reposts_count = track.reposts_count



	  	song_detail.plays_count = plays_count
	  	song_detail.likes_count = likes_count
      song_detail.reposts_count = reposts_count
	  	song_detail.save
  	end
    
  end

  def show
  	@song = Song.find(params[:id]) 
  	data = Nokogiri::HTML(open(@song.url))

  	@plays_count = data.search("meta[property='soundcloud:play_count']")[0].attributes["content"].value
  	@likes_count = data.search("meta[property='soundcloud:like_count']")[0].attributes["content"].value
    @reposts_count = data.to_s.split("reposts_count")[2].split(":")[1].split(",")[0] rescue nil
  end
	

  private

    def song_params
      params.require(:song).permit(:user_id, :url)
    end
end

