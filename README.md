* import the script in the target repository

 ```git subtree add -P .git-filters https://github.com/nxmatic/git-filters main```
* add a filter
  ```
  git config --local filter.sops-json.clean "git-sops-filter clean %f json"
  git config --local filter.sops-json.smudge "git-sops-filter smudge %f json"
  git config --local filter.sops-json.required true
  ```
