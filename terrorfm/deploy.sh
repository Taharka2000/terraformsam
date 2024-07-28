

cd /home/sammba/Bureau/bonjour

if [ ! -d ".git" ]; then
    git init
    git remote add origin https://github.com/Taharka2000/terraformsam.git
else
    git remote set-url origin https://github.com/Taharka2000/terraformsam.git
fi

# Fetch changes from origin
git fetch origin

# Reset the local branch to match origin/main
git reset --hard origin/main || true

# Pull changes from origin/main
git pull origin main --rebase || true

# Check for modified files and add them
git add .

# Commit the changes
git commit -m "Update React project" || echo "No changes to commit."

# Push changes to origin/main
git push origin main || echo "Push failed, please check your repository configuration."
