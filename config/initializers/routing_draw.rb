# Adds draw method into Rails routing
# It allows us to keep routing splitted into files
class ActionDispatch::Routing::Mapper
  # Each symbol or string value passed to draw gets
  # converted to a path, with the last argument equating
  # to the name of the file.
  def draw(*route_names)
    instance_eval(File.read(Rails.root.join("config/routes/#{route_names.join('/')}.rb")))
  end
end
