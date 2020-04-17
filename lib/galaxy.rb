class Galaxy < ActiveRecord::Base
    has_many :spacestations
    has_many :planets, through: :spacestations

    def galaxy_list
        Galaxy.all
    end
    def to_s
        sleep 0.1
        puts ""
        "#{self.name}"
    end
end