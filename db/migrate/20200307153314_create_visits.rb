# frozen_string_literal: true

class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.references :customer, null: false, foreign_key: true
      t.date :date_of_visit
      t.numeric :household_count
      t.string :notes

      t.timestamps
    end
  end
end
