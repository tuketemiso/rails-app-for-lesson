module ApplicationHelper
 def is_active_action(action_name)
    params[:action] == action_name ? "active" : nil
  end
end
