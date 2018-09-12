class CompetanceSgbdController < ApplicationController
before_action :get_id, only: [:show, :edit, :update, :destroy]

  def index
    @competances_sgbd = CompetanceSgbd.all
  end

  def new
    if user_signed_in?
      @competance_sgbd = CompetanceSgbd.new
    else
      flash[:error] = "Connectez dabord !"
      redirect_to new_user_session_path
    end
  end

  def create
    @competance_sgbd = CompetanceSgbd.new(competance_sgbd_params)
    @competance_sgbd.user_id = current_user.id
    if @competance_sgbd.save
      flash[:success] = "Competance langage ajouté avec succès"
      redirect_to competance_sgbd_index_path
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
  @competance_sgbd.update(competance_sgbd_params)
  if @competance_sgbd
    flash[:success] = "Compétance SGBD modifié avec succès"
    redirect_to competance_sgbd_path
  else
    flash[:notice] = "Compétance SGBD n'a pas pu être enregistré"
    render "edit"
  end
end

  def destroy
  end

  private

  def competance_sgbd_params
    params.require(:competance_sgbd).permit(:sgbd, :level)
  end

  def get_id
    @competance_sgbd = CompetanceSgbd.find(params[:id])
  end
end
