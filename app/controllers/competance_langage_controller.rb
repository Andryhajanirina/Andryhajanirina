class CompetanceLangageController < ApplicationController
before_action :get_id, only: [:show, :edit, :update, :destroy]

  def index
    @competances_langage = CompetanceLangage.all
  end

  def new
    if user_signed_in?
      @competance_langage = CompetanceLangage.new
    else
      flash[:error] = "Connectez dabord !"
      redirect_to new_user_session_path
    end
  end

  def create
    @competance_langage = CompetanceLangage.new(competance_langage_params)
    @competance_langage.user_id = current_user.id
    if @competance_langage.save
      flash[:success] = "Competance langage ajouté avec succès"
      redirect_to competance_langage_index_path
    else
      flash[:notice] = "Votre Competance langage n'a pas été enregistré !!!"
      render "new"
    end
  end

  def show
  end

  def edit
    
  end

  def update
    @competance_langage.update(competance_langage_params)
    if @competance_langage
      flash[:success] = "Compétance langage modifié avec succès"
      redirect_to articles_path
    else
      flash[:notice] = "Compétance langage n'a pas pu être enregistré"
      render "edit"
    end
  end

  def destroy
  end

  private

  def competance_langage_params
    params.require(:competance_langage).permit(:langage, :level)
  end

  def get_id
    @competance_langage = CompetanceLangage.find(params[:id])
  end
end
