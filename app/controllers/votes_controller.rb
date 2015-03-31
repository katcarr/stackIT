class VotesController<ApplicationController
  def new
    @vote = Vote.new
  end

  def upvote
    @response = Response.find(params[:response_id])
    @response.liked_by current_user
    response do |format|
      format.html{redirect_to :back}
      format.js
    end

  end

  def downvote
    @response = Response.find(params[:response_id])
    @response.downvote_from current_user
    redirect_to :back
  end
end
