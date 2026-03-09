#!/bin/bash

# GitHub Pages Deployment Script for Cosy Logistics Website
# Usage: ./deploy-to-github.sh YOUR_GITHUB_USERNAME

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}==================================${NC}"
echo -e "${BLUE}Cosy Logistics - GitHub Deploy${NC}"
echo -e "${BLUE}==================================${NC}"
echo ""

# Check if username provided
if [ -z "$1" ]; then
    echo -e "${YELLOW}Usage: ./deploy-to-github.sh YOUR_GITHUB_USERNAME${NC}"
    echo ""
    read -p "Enter your GitHub username: " GITHUB_USERNAME
else
    GITHUB_USERNAME=$1
fi

REPO_NAME="cosy-logistics-website"
REMOTE_URL="https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo ""
echo -e "${GREEN}✓${NC} GitHub Username: ${GITHUB_USERNAME}"
echo -e "${GREEN}✓${NC} Repository: ${REPO_NAME}"
echo ""

# Check if git is configured
if ! git config user.email > /dev/null 2>&1; then
    echo -e "${YELLOW}Configuring git user...${NC}"
    git config user.email "sales@cosylogistics.net"
    git config user.name "Cosy Logistics"
fi

# Check if remote already exists
if git remote | grep -q "^origin$"; then
    echo -e "${YELLOW}Remote 'origin' already exists. Update it? (y/n)${NC}"
    read -p "> " answer
    if [ "$answer" = "y" ]; then
        git remote set-url origin $REMOTE_URL
        echo -e "${GREEN}✓${NC} Remote updated"
    fi
else
    git remote add origin $REMOTE_URL
    echo -e "${GREEN}✓${NC} Remote added: $REMOTE_URL"
fi

echo ""
echo -e "${BLUE}----------------------------------${NC}"
echo -e "${BLUE}Next Steps:${NC}"
echo -e "${BLUE}----------------------------------${NC}"
echo ""
echo -e "${YELLOW}1. Create GitHub Repository:${NC}"
echo "   - Go to: https://github.com/new"
echo "   - Repository name: ${REPO_NAME}"
echo "   - Description: Shenzhen Cosy International Logistics - Company Website"
echo "   - Visibility: Public"
echo "   - DO NOT initialize with README"
echo "   - Click 'Create repository'"
echo ""
echo -e "${YELLOW}2. Push to GitHub:${NC}"
echo "   Run this command after creating the repository:"
echo ""
echo -e "${BLUE}   git push -u origin main${NC}"
echo ""
echo -e "${YELLOW}3. Enable GitHub Pages:${NC}"
echo "   - Go to: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/settings/pages"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main / root"
echo "   - Click Save"
echo ""
echo -e "${YELLOW}4. Access your website:${NC}"
echo "   https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/"
echo ""
echo -e "${BLUE}----------------------------------${NC}"
echo ""

# Ask if user wants to push now
read -p "Have you created the repository? (y/n): " created

if [ "$created" = "y" ]; then
    echo ""
    echo -e "${BLUE}Pushing to GitHub...${NC}"
    
    # Try to push
    if git push -u origin main; then
        echo ""
        echo -e "${GREEN}==================================${NC}"
        echo -e "${GREEN}✓ Deployment Successful!${NC}"
        echo -e "${GREEN}==================================${NC}"
        echo ""
        echo -e "Your website will be live at:${NC}"
        echo -e "${BLUE}https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/${NC}"
        echo ""
        echo -e "${YELLOW}Note: It may take 1-2 minutes for GitHub to deploy.${NC}"
        echo ""
    else
        echo ""
        echo -e "${RED}✗ Push failed!${NC}"
        echo ""
        echo -e "${YELLOW}Possible solutions:${NC}"
        echo "1. Make sure you created the repository on GitHub"
        echo "2. Check your GitHub username is correct"
        echo "3. You may need to use a Personal Access Token"
        echo ""
        echo -e "Create token: ${BLUE}https://github.com/settings/tokens${NC}"
        echo -e "Permissions needed: ${YELLOW}repo, workflow${NC}"
        echo ""
        echo -e "${YELLOW}Then try again:${NC}"
        echo "   git push -u origin main"
        echo ""
    fi
else
    echo ""
    echo -e "${YELLOW}No problem! When ready, run:${NC}"
    echo "   ${BLUE}git push -u origin main${NC}"
    echo ""
    echo -e "Repository URL: ${BLUE}https://github.com/new${NC}"
    echo ""
fi

echo -e "${BLUE}For detailed instructions, see:${NC}"
echo "   GITHUB_DEPLOYMENT.md"
echo ""
