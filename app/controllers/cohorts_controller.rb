class CohortsController < ApplicationController

    def index
        cohorts = Cohort.all
        render json: cohorts
    end

    def show
        cohort = Cohort.find(params[:id])
        render json: {cohort: CohortSerializer.new(cohort)}
    end

    def create
        # we should receive a cohort name, a start date, and a list of students.
        cohort = Cohort.create!(cohort_params)
        
        params[:students].each do |student|
            Student.create!(name: student, have_gone: false, cohort_id: cohort.id)
        end

        render json: cohort
    end

    def cohort_names
        names = Cohort.all.map{|coh| {"id"=> coh.id, "name" => "#{coh.name.length>0? coh.name : "Name Unspecified" } (#{coh.start_date})"}}
        render json: names
    end

    private
    
    def cohort_params
        params.require(:cohort).permit(:name, :start_date)
    end
end
