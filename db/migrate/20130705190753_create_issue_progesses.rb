class CreateIssueProgresses < ActiveRecord::Migration
  def change
    create_table :issue_progresses do |t|
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
    add_index :issue_progresses, :issue_id
    add_index :issue_progresses, :user_id
  end
end
