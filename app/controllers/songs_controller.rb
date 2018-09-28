class SongsController < InheritedResources::Base
	

  private

    def song_params
      params.require(:song).permit(:user_id, :url)
    end
end

