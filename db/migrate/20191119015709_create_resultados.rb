class CreateResultados < ActiveRecord::Migration[5.2]
  def change
    create_table :resultados do |t|
      t.string :resultado

      t.timestamps
    end
  end
end
