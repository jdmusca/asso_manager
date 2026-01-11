class CotisationsController < ApplicationController
  def index
    begin
      @cotisations = if defined?(Cotisation)
                        Cotisation.all.to_a
                      else
                        []
                      end
    rescue StandardError => e
      Rails.logger.debug("Cotisations#index fallback empty due to: #{e.class} - #{e.message}")
      @cotisations = []
    end
  end
end
