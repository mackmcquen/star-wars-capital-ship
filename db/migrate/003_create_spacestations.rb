class CreateSpacestations < ActiveRecord::Migration[5.2]
    def change
        create_table :spacestations do |t|
            t.string :name
            t.integer :galaxy_id
            t.integer :planet_id
        end
    end
end