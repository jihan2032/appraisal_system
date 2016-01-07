module AppraisalSystem
  class AppraisalModule < ActiveRecord::Base
    # Validations
    validates :name, :description, presence: true
    # Relations
    has_many :competences
  end
end
