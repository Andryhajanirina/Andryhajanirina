class ExperienceController < ApplicationController
  before_action :get_id, only: [:show, :edit, :update, :destroy]
  def index
    @experiences = Experience.all
  end

  def new
    if user_signed_in?
      @experience = Experience.new
    else
      flash[:error] = "Connectez dabord !"
      redirect_to new_user_session_path
    end
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user_id = current_user.id
    if @experience.save
      flash[:success] = "Expérience ajouté avec succès"
      redirect_to experience_index_path
    else
      flash[:notice] = "Votre expérience n'a pas été enregistré !!!"
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    @experience.update(experience_params)
    if @experience
      flash[:success] = "Compétance experience modifié avec succès"
      redirect_to @experience
    else
      flash[:notice] = "Compétance experience n'a pas pu être enregistré"
      render "edit"
    end
  end

  def destroy
  end

  private

  def experience_params
    params.require(:experience).permit(:intitule, :societe, :debut, :fin, :description)
  end

  def get_id
    @experience = Experience.find(params[:id])
  end
end
