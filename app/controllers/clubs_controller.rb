 
 
class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json, :js

  def index
    @clubs = Club.all
  end 

  def show
  end 

  def new 
    @club = Club.new
  end 

  def edit
  end 

  def create
    @club = Club.new(club_params)
    @club.save
    respond_with(@club)
  end 

  def update
    @club.update(club_params)
    flash[:notice] = 'Club was successfully updated.'
    respond_with(@club)
  end 

  def destroy
    @club.destroy
    redirect_to clubs_url, notice: 'Club was successfully destroyed.'
  end 

  private
    def set_club
      @club = Club.find(params[:id])
    end 

    def club_params
      params.require(:club).permit(:name, :number, :location, :email, :site, :telephone) 
    end 
end
 
