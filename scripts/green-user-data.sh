#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl enable httpd
systemctl start httpd
cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head><title>Green Environment</title></head>
<body>
<h1>GREEN ENVIRONMENT</h1>
<div>Version 2.0</div>
<p>New version deployed successfully!</p>
</body>
</html>
EOF
systemctl restart httpd
