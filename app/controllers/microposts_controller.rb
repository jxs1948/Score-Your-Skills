class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
 # before_action :authorize_admin, only: :index
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Scoresheet created!"
      redirect_to root_url
    else
         @feed_items = []
      render 'static_pages/home'
    end
  end

  
  
  def destroy
        @micropost.destroy
    flash[:success] = "Scoresheet deleted"
    redirect_to request.referrer || root_url
  end

 
  
  private
    def micropost_params
      params.require(:micropost).permit(:content, :correctness, :creativity, :sustainability, :relevance, :user_experience )
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
  
end