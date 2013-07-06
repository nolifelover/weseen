class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :fullname
      t.string :mobile
      t.string :email
      t.string :place
      t.string :time
      t.string :detail
      t.integer :status
      t.integer :flag

      t.timestamps
    end
  end
end
