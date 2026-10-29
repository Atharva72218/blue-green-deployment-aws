#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl enable httpd
systemctl start httpd
cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head><title>Blue Environment</title></head>
<body>
<h1>BLUE ENVIRONMENT</h1>
<div>Version 1.0</div>
<p>Running on AWS EC2 + Apache</p>
</body>
</html>
EOF
systemctl restart httpd
