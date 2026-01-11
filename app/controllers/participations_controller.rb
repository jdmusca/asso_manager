class ParticipationsController < ApplicationController
  def index
    begin
      @participations = if defined?(Participation)
                          Participation.all.to_a
                        else
                          []
                        end
    rescue StandardError => e
      Rails.logger.debug("Participations#index fallback empty due to: #{e.class} - #{e.message}")
      @participations = []
    end
  end
end
