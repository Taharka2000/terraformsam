

cd /home/sammba/Bureau/bonjour


     if [ ! -d ".git" ]; then
       git init
     fi
     git remote remove origin 2>/dev/null || true
     git remote add origin https://github.com/Taharka2000/terraformsam.git
     git add .
     git commit -m "Initial commit of React project" || echo "No changes to commit."
     git branch -M main
     git push -u origin main
