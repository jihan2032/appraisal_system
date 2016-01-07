require_dependency "appraisal_system/application_controller"

module AppraisalSystem
  class AppraisalModulesController < ApplicationController

    before_action :set_module, only: [:show, :edit, :update, :destroy]

    def index
      @modules = AppraisalModule.all
    end

    def new
      @appraisal_module = AppraisalModule.new
    end

    def create
      @appraisal_module = AppraisalModule.new appraisal_module_params
      if @appraisal_module.save
        redirect_to appraisal_modules_path, notice: 'Module created successfully.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @appraisal_module.update appraisal_module_params
        redirect_to appraisal_modules_path, notice: 'Module updated successfully.'
      else
        render :edit
      end
    end

    def show
      @competences = @appraisal_module.competences
    end

    def destroy
      if @appraisal_module.destroy
        redirect_to appraisal_modules_path, notice: "Module was successfully removed."
      end
    end

  private

    def set_module
      @appraisal_module = AppraisalModule.find params[:id]
    end

    def appraisal_module_params
      params.require(:appraisal_module).permit(
        :name,
        :description
      )
    end
  end
end
