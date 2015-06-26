Deface::Override.new(:virtual_path  => "spree/admin/shared/_header",
                     :replace => "[data-hook='admin_login_navigation_bar']",
                     :text => "
                     <ul id='login-nav' class='nav navbar-nav navbar-right'>
                       <li><%= link_to('Edit', main_app.edit_user_registration_path) %></li>
                       <li><%= link_to('Logout', main_app.destroy_user_session_path, :method => :delete) %></li>
                     </ul>
                     ",
                     :name => "inject login bar")