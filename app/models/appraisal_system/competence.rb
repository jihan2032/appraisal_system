module AppraisalSystem
  class Competence < ActiveRecord::Base
    # Relations
    belongs_to :appraisal_module
  end
end
