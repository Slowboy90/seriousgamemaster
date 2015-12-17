# application helper
module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def calculate_color(name)
    case name
    when 'Design & Experience'
      'design_experience'
    when 'Implementation & Integration'
      'implementation_integration'
    when 'Research & Innovation'
      'research_innovation'
    when 'Projectmanagement & Leadership'
      'projectmanagement_leadership'
    when 'Communication & Sharing'
      'communication_sharing'
    when 'Growth & Reflection'
      'growth_reflection'
    else
      'default-color'
    end
  end
end
