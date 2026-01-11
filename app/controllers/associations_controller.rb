class AssociationsController < ApplicationController
  def index
    begin
      @associations = if defined?(Association)
                        Association.all.to_a
                      else
                        []
                      end
    rescue StandardError => e
      Rails.logger.debug("Associations#index fallback empty due to: #{e.class} - #{e.message}")
      @associations = []
    end
  end
end
