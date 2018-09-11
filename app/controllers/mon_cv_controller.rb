class MonCvController < ApplicationController
  def index
    @experiences = Experience.all
    @formations = Formation.all
    @competances_cms = CompetanceCms.all
    @competances_framework = CompetanceFramework.all
    @competances_langage = CompetanceLangage.all
    @competances_sgbd = CompetanceSgbd.all

    # Ceci va récupérer l'année à la quelle j'ai commencé à travailler
    if (@experiences == nil) || (@experiences == [])
    	@debut_experience = 2000
    else
    	@debut_experience = @experiences.order("debut ASC").first.debut.year
    end

    # Ceci va récupérer l'année à la quelle j'ai commencé à travailler
    if (@formations == nil) || (@formations == [])
    	@debut_formation = 2000
    else
    	@debut_formation = @formations.order("debut ASC").first.debut.year
    end
  end
end
