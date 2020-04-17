class CreateGalaxies < ActiveRecord::Migration[5.2]
    def change
        create_table :galaxies do |t|
            t.string :name
        end
    end
end