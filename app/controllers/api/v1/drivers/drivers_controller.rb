module Api
  module V1
    class Drivers::DriversController < VerisonController

      def index
        name = 'Jacob John'
        render json: name, status: :ok
      end


    end
  end
end
