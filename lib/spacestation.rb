class Spacestation < ActiveRecord::Base
    belongs_to :galaxy
    belongs_to :planet

    def to_s
        sleep 0.1
        puts ""
        "#{self.name}"
    end
end