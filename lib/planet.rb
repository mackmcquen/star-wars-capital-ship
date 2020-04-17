class Planet < ActiveRecord::Base
    has_many :spacestations
    has_many :galaxies, through: :spacestations

    def to_s
        sleep 0.1
        puts ""
        "#{self.name}"
    end
end