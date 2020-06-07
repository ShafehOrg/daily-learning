class CreateSiddurParagraphs < ActiveRecord::Migration[5.2]
  def change
    create_table :siddur_paragraphs do |t|

      t.timestamps
    end
  end
end
