# Step 6: Additional Deployment Steps (Optional)
- name: Additional Deployment Steps
  run: |
    # Change directory to 'githubactions'
    echo "Changing directory to githubactions..."
    cd githubactions
    echo 

    # Install dependencies using npm
    echo "Installing dependencies..."
    npm install 
    echo

    # Build the React app
    echo "Building React app..."
    npm run build
    echo

   
