

cd /home/sammba/Bureau/bonjour


     #Initialize a new Git repository if one doesn't exist
if [ ! -d ".git" ]; then
  git init
fi

# Check if the remote 'origin' exists
git remote | grep -q 'origin'
if [ $? -ne 0 ]; then
  git remote add origin https://github.com/Taharka2000/terraformsam.git
fi

# Pull the latest changes from the remote repository
git pull origin main

# Add all changes to the staging area, excluding terraform.tfvars
git add --all
git reset terraform.tfvars

# Commit the changes
git commit -m "Initial commit of React project"

# Push the changes to the remote repository
    git push -u origin main