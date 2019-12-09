class User
  attr_accessor :type, :enabled

  def initialize(type, enabled)
    @type = type
    @enabled = enabled
  end


  def editor?
    type == :editor
  end

  def disabled?
    !enabled
  end
end

user = User.new(:editor, true)

user_exists = !user.nil?
can_edit = user.editor? && !user.disabled?

if user_exists && can_edit
  # code to enable editing
end
