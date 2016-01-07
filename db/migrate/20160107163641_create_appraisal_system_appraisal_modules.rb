class CreateAppraisalSystemAppraisalModules < ActiveRecord::Migration
  def change
    create_table :appraisal_system_appraisal_modules do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
