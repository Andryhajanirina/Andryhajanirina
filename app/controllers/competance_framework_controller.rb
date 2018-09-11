class CompetanceFrameworkController < ApplicationController
  before_action :get_id, only: [:show, :edit, :update, :destroy]

  def index
    @competances_framework = CompetanceFramework.all
  end

  def new
    if user_signed_in?
      @competance_framework = CompetanceFramework.new
    else
      flash[:error] = "Connectez dabord !"
      redirect_to new_user_session_path
    end
  end

  def create
    @competance_framework = CompetanceFramework.new(competance_framework_params)
    @competance_framework.user_id = current_user.id
    if @competance_framework.save
      flash[:success] = "Competance Framework ajouté avec succès"
      redirect_to competance_framework_index_path
    else
      flash[:notice] = "Votre Competance Framework n'a pas été enregistré !!!"
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

  def competance_framework_params
    params.require(:competance_framework).permit(:framework, :level)
  end

  def get_id
    @competance_framework = CompetanceFramework.find(params[:id])
  end
end
