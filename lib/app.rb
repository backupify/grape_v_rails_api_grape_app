module GrapeApp
  class App < Rack::Cascade
    def initialize
      super [GrapeApp::API]
    end
  end
end
