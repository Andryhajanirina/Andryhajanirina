class CompetanceCmsController < ApplicationController
  before_action :get_id, only: [:show, :edit, :update, :destroy]

  def index
    @competances_cms = CompetanceCms.all
  end

  def new
    if user_signed_in?
      @competance_cms = CompetanceCms.new
    else
      flash[:error] = "Connectez dabord !"
      redirect_to new_user_session_path
    end
  end

  def create
    @competance_cms = CompetanceCms.new(competance_cms_params)
    @competance_cms.user_id = current_user.id
    if @competance_cms.save
      flash[:success] = "Competance CMS ajouté avec succès"
      redirect_to competance_cms_path
    else
      flash[:notice] = "Votre Competance CMS n'a pas été enregistré !!!"
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

  def competance_cms_params
    params.require(:competance_cms).permit(:cms, :level)
  end

  def get_id
    @competance_cms = CompetanceCms.find(params[:id])
  end
end
