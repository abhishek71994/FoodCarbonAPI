module V1
  class User < Grape::API
    format 'json'
    resource :user do
      params do
        require :id, type: Integer, desc: 'User ID'
      end

      get do
        binding.pry
      end
    end
  end
end