module MoviesHelper
  def determine_direction(column)
    current_column = @sort_column == column
    current_direction = @sort_direction == "asc" ? "desc" : "asc"
    current_column ? current_direction : "asc"
  end
end
