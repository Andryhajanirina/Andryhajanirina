class FormationController < ApplicationController
  before_action :get_id, only: [:show, :edit, :update, :destroy]
  def index
    @formations = Formation.all
  end

  def new
    if user_signed_in?
      @formation = Formation.new
    else
      flash[:error] = "Connectez dabord !"
      redirect_to new_user_session_path
    end
  end

  def create
    @formation = Formation.new(formation_params)
    @formation.user_id = current_user.id
    if @formation.save
      flash[:success] = "Formation ajouté avec succès"
      redirect_to formation_index_path
    else
      flash[:notice] = "Votre formation n'a pas été enregistré !!!"
      render "new"
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def formation_params
    params.require(:formation).permit(:intitule, :diplome, :etablissement, :debut, :fin, :description)
  end

  def get_id
    @formation = Formation.find(params[:id])
  end
end
