class FourOneEight

  def initialize(app)
    @app = app
  end

  def call(env)
    if rand < .05
      [418, {}, self]
    else
      @app.call(env)
    end
  end

end

