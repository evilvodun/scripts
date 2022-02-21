foreach ($remote in $(git branch -r)){ 
    if ($remote -Match "feature") {
        $FeatureBranch = $remote -Split "origin/"
        Write-Host "Fetching $remote => $FeatureBranch"
        git branch --track $FeatureBranch.Trim()
        git fetch --all
        git pull --all
    }
}