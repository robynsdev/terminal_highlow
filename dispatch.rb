def dispatch(cmd, params = nil)
  case cmd
  when 'list'
    ::RecipesController.index
  when 'show'
    ::RecipesController.show params
  when 'new'
    ::RecipesController.new
  when 'edit'
    ::RecipesController.edit params
  when 'delete'
    ::RecipesController.destroy params
  end
end