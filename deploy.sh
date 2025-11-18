#!/bin/bash

# Pharmaceutical Case Studies - Quick Deploy Script
# This script helps you quickly deploy to GitHub Pages

echo "🚀 Pharmaceutical Case Studies - Deployment Helper"
echo "=================================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    echo "   Visit: https://git-scm.com/downloads"
    exit 1
fi

# Check if already a git repository
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
    echo ""
else
    echo "✅ Git repository already exists"
    echo ""
fi

# Check if remote exists
if git remote | grep -q "origin"; then
    echo "🔗 Remote 'origin' already configured"
    REMOTE_URL=$(git remote get-url origin)
    echo "   URL: $REMOTE_URL"
    echo ""
else
    echo "🔗 Setting up GitHub remote..."
    echo ""
    echo "Please enter your GitHub repository URL"
    echo "Example: https://github.com/username/pharma-ethics-cases.git"
    read -p "Repository URL: " REPO_URL
    
    if [ -z "$REPO_URL" ]; then
        echo "❌ No URL provided. Exiting."
        exit 1
    fi
    
    git remote add origin "$REPO_URL"
    echo "✅ Remote added successfully"
    echo ""
fi

# Check current branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "none")

if [ "$CURRENT_BRANCH" != "main" ] && [ "$CURRENT_BRANCH" != "none" ]; then
    echo "⚠️  Current branch is '$CURRENT_BRANCH'"
    read -p "Switch to 'main' branch? (y/n): " SWITCH_BRANCH
    if [ "$SWITCH_BRANCH" = "y" ]; then
        git checkout -b main 2>/dev/null || git checkout main
        echo "✅ Switched to main branch"
    fi
    echo ""
fi

# Stage all files
echo "📝 Staging files..."
git add .
echo "✅ Files staged"
echo ""

# Commit
echo "💾 Creating commit..."
read -p "Enter commit message (or press Enter for default): " COMMIT_MSG

if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="Update pharmaceutical case studies site"
fi

git commit -m "$COMMIT_MSG"
echo "✅ Commit created"
echo ""

# Push
echo "🚀 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "📋 Next Steps:"
    echo "1. Go to your GitHub repository"
    echo "2. Click 'Settings' → 'Pages'"
    echo "3. Under 'Source', select 'Deploy from a branch'"
    echo "4. Choose 'main' branch and '/ (root)' folder"
    echo "5. Click 'Save'"
    echo "6. Wait 1-2 minutes for deployment"
    echo ""
    echo "🌐 Your site will be available at:"
    echo "   https://yourusername.github.io/repository-name/"
    echo ""
    echo "📚 For more deployment options, see DEPLOYMENT.md"
else
    echo ""
    echo "❌ Push failed. Common issues:"
    echo "   - Repository doesn't exist on GitHub (create it first)"
    echo "   - Authentication failed (check credentials)"
    echo "   - Remote URL is incorrect"
    echo ""
    echo "💡 Manual steps:"
    echo "   1. Create repository on GitHub"
    echo "   2. Run: git remote set-url origin YOUR_REPO_URL"
    echo "   3. Run: git push -u origin main"
fi

echo ""
echo "=================================================="
echo "Deployment script completed"
