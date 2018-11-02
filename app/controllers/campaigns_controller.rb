class CampaignsController < InheritedResources::Base

  private

    def campaign_params
      params.require(:campaign).permit(:user_id, :artist, :assigned_to, :promoted_by, :target_plays, :status, :plays, :likes, :reposts, :comments)
    end
end

