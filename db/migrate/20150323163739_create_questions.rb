class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :ask, :string

      t.timestamps
    end
  end
end
