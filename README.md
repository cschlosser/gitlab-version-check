# Gitlab version checker

## How to run

```bash
echo "Enter your Gitlab API Token:"
read -s gitlab_key

echo "Enter your SMTP Password:"
read -s smtp_pass

docker run --rm -t \
-e API_TOKEN="$gitlab_key" \
-e GITLAB_URL="http://your.gitlab.url" \
-e SMTP_SERVER="smtp://your.smtp.server:port" \
-e SMTP_USER="<your_user_name>" \
-e SMTP_PASSWORD="$smtp_pass" \
-e SMTP_FROM="from@your.gitlab.url" \
-e RECEIVER="admin@your.email" \
cschlosser/gitlab-version-check
```
