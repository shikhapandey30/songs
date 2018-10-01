class SongsController < InheritedResources::Base
	require 'nokogiri'
	require 'open-uri'
	require 'pry'
  before_action :authenticate_user!


  def index
  	@user = current_user
  	songs = @user.songs
  	#@song = song.find_by(params[:id])
  	# songs.each do |song|
  	# 	song_detail = SongDetail.find_or_initialize_by(song_id: song.id)
	  # 	data = Nokogiri::HTML(open(song.url))
	  # 	plays_count = data.search("meta[property='soundcloud:play_count']")[0].attributes["content"].value


	  # 	likes_count = data.search("meta[property='soundcloud:like_count']")[0].attributes["content"].value
	  # 	song_detail.plays_count = plays_count
	  # 	song_detail.likes_count = likes_count
	  # 	song_detail.save
  	# end
  end

  def show
  	@song = Song.find(params[:id]) 
  	data = Nokogiri::HTML(open(@song.url))

  	@plays_count = data.search("meta[property='soundcloud:play_count']")[0].attributes["content"].value


  	@likes_count = data.search("meta[property='soundcloud:like_count']")[0].attributes["content"].value

   # if @song.url
   # 	song = @song.url.update_attribute(:plays_count => params[:plays_count], :likes_count => [:likes_count], :reposts_count => [:reposts_count])
   # else
   # 	song = Song.create(:plays_count => [:plays_count], :likes_count => [:likes_count], :reposts_count => [:reposts_count])
   # end
  end
	

  private

    def song_params
      params.require(:song).permit(:user_id, :url)
    end
end

