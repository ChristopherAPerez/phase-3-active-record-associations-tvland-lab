class Network < ActiveRecord::Base
    belongs_to :show

    def shows
        shows = Show.where(network_id: self.id)
    end

    def sorry
        "We're sorry about passing on John Mulaney's pilot"
    end

end
