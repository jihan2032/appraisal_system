class CreateAppraisalSystemCompetences < ActiveRecord::Migration
  def change
    create_table :appraisal_system_competences do |t|
      t.string :title
      t.text :description
      t.integer :appraisal_module_id

      t.timestamps null: false
    end
  end
end
