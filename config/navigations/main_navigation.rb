SimpleNavigation::Configuration.run do |navigation|
  navigation.autogenerate_item_ids = false

  navigation.items do |primary|
    primary.dom_class = 'main'

    primary.with_options(if: Proc.new { user_signed_in? }) do |signed_in_user|
      signed_in_user.item :dashboard, 'Dashboard', root_path
    end
    
    primary.with_options(if: Proc.new { current_user.try(:admin?) }) do |admin|
      admin.item :courses, 'Courses', admin_courses_path
      admin.item :users, 'Users', admin_users_path
    end
  end
end
