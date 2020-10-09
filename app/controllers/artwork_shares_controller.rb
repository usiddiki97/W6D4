class ArtworkSharesController < ApplicationController

    def create
        artwork_share = ArtworkShare.new(artwork_share_params)

        if artwork_share.save
            render json: artwork_share
        else
            render json: artwork_share.errors.full_messages, status: 422
        end
    end

    def destroy
        # debugger
        artwork_share = ArtworkShare.find(params[:id])
        artwork_share.destroy
        render plain: "The instance has been deleted"
        # render plain: "I'm in the index action!"
    end

    private

    def artwork_share_params
        params.require(:artwork_share).permit(:viewer_id, :artwork_id)
    end
end