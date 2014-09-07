 class ProfilesController < ApplicationController
	layout 'application'
  before_action :find_profile
  before_action :authenticate_user!, except: [:index,:show]
  #before_action :confirm_logged_in

	def index
    @profiles=Profile.search(params[:keyword])
    #if params[:keyword]==''
     # @profiles=Profile.sorted
    #end 
	end
   
  def show
    @profile=Profile.find(params[:id])
  end
   
	def new
    @profile=Profile.new
	end

	def create
    @profile=Profile.new(profile_params)
	#Save the object
    if @profile.save
    #If save succeeds, redirect to the index action
    flash[:notice]="Profile created successfullly."
    redirect_to(:action=>'index')
    else
    #If save fails, redisplay the form so user can fix the problems
    @profile=Profile.order('position ASC')
     render('new')
    end
	end

	def edit
	@profile=Profile.find(params[:id])
	@profile=Profile.order('position ASC')
	end

	def update
	@profile=Profile.find(params[:id])
	#Save the object
    if @profile.update_attributes(profile_params)
    #If save succeeds, redirect to the index action
    flash[:notice]="Profile updated successfullly."
    redirect_to(:action=>'index')
    else
    #If save fails, redisplay the form so user can fix the problems
    @profile=Profile.order('position ASC')
    render('edit')
    end
	end

	def delete
	@profile=Profile.find(params[:id])
	end

	def destroy
	@profile=Profile.find(params[:id]).destroy
    flash[:notice]="Profile deleted successfully."
    redirect_to(:action=>'index')
	end

private
   def profile_params
     params.require(:profile).permit(:login, :name,:surname,:password,:birth,:about,:status)
      end
   
   def find_profile
     if params[:profile_id]
       @profile=Profile.find(params[:profile_id])
        end
      end
      
end

