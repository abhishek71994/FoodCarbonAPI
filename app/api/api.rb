module API
  class Root < Grape::API
    version 'v1'
    mount V1::User
  end
end
