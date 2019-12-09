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

if !user.nil? && user.editor? && !user.disabled?
  puts 'The user is allowed to edit articles'
end
