module Api
  class V1::VersionController < ApiController
    abstract!

    rescue_from ActiveRecord::RecordNotFound do
      render json: :no_content, status: :not_found
    end
  end
end
