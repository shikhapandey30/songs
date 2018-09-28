class SongsController < InheritedResources::Base
  before_action :authenticate_user!
	

  private

    def song_params
      params.require(:song).permit(:user_id, :url)
    end
end

