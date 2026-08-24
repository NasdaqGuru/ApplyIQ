# Initialize git repository
git init

# Stage all project files
git add .

# Create initial commit
git commit -m "Initial commit: CareerFit AI application"

# Rename branch to main
git branch -M main

# Link to your GitHub repository and push
git remote add origin https://github.com/<your-username>/<your-repo-name>.git
git push -u origin main