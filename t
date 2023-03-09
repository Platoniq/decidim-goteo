[1mdiff --git a/config/initializers/decidim.rb b/config/initializers/decidim.rb[m
[1mindex 83f519c..8ff8c95 100644[m
[1m--- a/config/initializers/decidim.rb[m
[1m+++ b/config/initializers/decidim.rb[m
[36m@@ -478,6 +478,17 @@[m [mif Decidim.module_installed? :elections[m
   end[m
 end[m
 [m
[32m+[m[32mif defined?(Decidim::GoteoOauth)[m
[32m+[m[32m  Decidim::GoteoOauth.oauth_scope = :TEST[m
[32m+[m[32m  Decidim::GoteoOauth.oauth_client_options = {[m
[32m+[m[32m    site: Rails.application.secrets.goteo[:app_url],[m
[32m+[m[32m    authorize_url: "/authorize",[m
[32m+[m[32m    user_info_url: "/userInfo",[m
[32m+[m[32m    token_url: "/token",[m
[32m+[m[32m    response_type: "authorization_code"[m
[32m+[m[32m  }[m
[32m+[m[32mend[m
[32m+[m
 Rails.application.config.i18n.available_locales = Decidim.available_locales[m
 Rails.application.config.i18n.default_locale = Decidim.default_locale[m
 [m
