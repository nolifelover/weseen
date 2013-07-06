class CreateIssueProgesses < ActiveRecord::Migration
  def change
    create_table :issue_progesses do |t|
      t.references :issue
      t.references :user
      t.string :name
      t.text :remark
      t.integer :status
      t.integer :level
      t.float :price
      t.timestamp :check_at

      t.timestamps
    end
    add_index :issue_progesses, :issue_id
    add_index :issue_progesses, :user_id
  end
end
