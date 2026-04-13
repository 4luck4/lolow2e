# Auto commit and push changes
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "Checking for changes..." -ForegroundColor Cyan

# Add all changes
git add .

# Check if there are changes
$status = git status --porcelain
if ($status) {
    # Create commit with current date and time
    $commitMessage = "Auto update: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git commit -m $commitMessage
    
    Write-Host "Commit created: $commitMessage" -ForegroundColor Green
    
    # Push changes
    Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
    git push
    
    Write-Host "Changes pushed to GitHub successfully!" -ForegroundColor Green
} else {
    Write-Host "No changes to commit" -ForegroundColor Yellow
}
