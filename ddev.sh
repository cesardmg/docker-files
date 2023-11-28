DDEV has built-in support for WP-CLI, the command-line interface for WordPress.


mkdir my-wp-site
cd my-wp-site/

# Create a new DDEV project inside the newly-created folder
# (Primary URL automatically set to `https://<folder>.ddev.site`)
ddev config --project-type=wordpress
ddev start

# Download WordPress
ddev wp core download

# Launch in browser to finish installation
ddev launch

# OR use the following installation command
# (we need to use single quotes to get the primary site URL from `.ddev/config.yaml` as variable)
ddev wp core install --url='$DDEV_PRIMARY_URL' --title='New-WordPress' --admin_user=admin --admin_email=admin@example.com --prompt=admin_password

# Launch WordPress admin dashboard in your browser
ddev launch wp-admin/
