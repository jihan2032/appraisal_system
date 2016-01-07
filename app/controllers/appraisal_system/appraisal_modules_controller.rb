require_dependency "appraisal_system/application_controller"

module AppraisalSystem
  class AppraisalModulesController < ApplicationController

    def index
      @modules = AppraisalModule.all
    end

    def new
      @appraisal_module = AppraisalModule.new
    end

    def create
      @appraisal_module = AppraisalModule.new appraisal_module_params
      if @appraisal_module.save
        redirect_to appraisal_modules_path, notice: 'Appraisal Module created successfully.'
      else
        render :new
      end
    end

  private
    def appraisal_module_params
      params.require(:appraisal_module).permit(
        :name,
        :description
      )
    end
  end
end
