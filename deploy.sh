#!/bin/bash

# Lance James Resume - GitHub Pages Deployment Script

echo "🚀 Lance James Resume - GitHub Pages Deployment"
echo "=============================================="

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    git branch -M main
else
    echo "✅ Git repository detected"
fi

# Add files to git
echo "📦 Adding files to repository..."
git add .

# Commit changes
echo "💾 Committing changes..."
commit_msg="Deploy Lance James interactive terminal resume $(date +'%Y-%m-%d %H:%M:%S')"
git commit -m "$commit_msg"

# Check if remote exists
if git remote get-url origin >/dev/null 2>&1; then
    echo "✅ Remote origin found"
    echo "🔄 Pushing to GitHub..."
    git push origin main
else
    echo "⚠️  No remote origin configured"
    echo ""
    echo "To complete deployment:"
    echo "1. Create a new repository on GitHub: https://github.com/new"
    echo "2. Name it: lance-resume (or your preferred name)"
    echo "3. Make it PUBLIC (required for free GitHub Pages)"
    echo "4. Don't initialize with README"
    echo ""
    echo "Then run these commands:"
    echo "git remote add origin https://github.com/YOUR-USERNAME/lance-resume.git"
    echo "git push -u origin main"
    echo ""
    echo "Finally, enable GitHub Pages:"
    echo "- Go to repository Settings → Pages"
    echo "- Source: Deploy from branch"
    echo "- Branch: main, folder: / (root)"
    echo "- Save"
    echo ""
    echo "Your resume will be live at: https://YOUR-USERNAME.github.io/lance-resume"
fi

echo ""
echo "🎯 Features included in this deployment:"
echo "   • 50+ terminal commands"
echo "   • Tab completion & command history" 
echo "   • Interactive resume navigation"
echo "   • Case studies & project showcases"
echo "   • Fun easter eggs & hacker aesthetics"
echo "   • Mobile-responsive design"
echo "   • SEO optimized"
echo ""
echo "✨ Ready to showcase your cybersecurity expertise!"