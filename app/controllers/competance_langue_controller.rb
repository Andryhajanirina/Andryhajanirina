class CompetanceLangueController < ApplicationController
before_action :get_id, only: [:show, :edit, :update, :destroy]

  def index
    @competances_sgbd = CompetanceLangue.all
  end

  def new
    if user_signed_in?
      @competance_langue = CompetanceLangue.new
    else
      flash[:error] = "Connectez dabord !"
      redirect_to new_user_session_path
    end
  end

  def create
    @competance_langue = CompetanceLangue.new(competance_langue_params)
    @competance_langue.user_id = current_user.id
    if @competance_langue.save
      flash[:success] = "Competance langage ajouté avec succès"
      redirect_to competance_langue_index_path
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
  @competance_langue.update(competance_langue_params)
  if @competance_langue
    flash[:success] = "Compétance SGBD modifié avec succès"
    redirect_to competance_langue_path
  else
    flash[:notice] = "Compétance SGBD n'a pas pu être enregistré"
    render "edit"
  end
end

  def destroy
  end

  private

  def competance_langue_params
    params.require(:competance_langue).permit(:langue, :level)
  end

  def get_id
    @competance_langue = CompetanceLangue.find(params[:id])
  end
end
