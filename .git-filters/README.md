* import the script in the target repository
```
> git remote add git-filters https://github.com/nxmatic/git-filters
> git fetch git-filters
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 6 (delta 1), reused 6 (delta 1), pack-reused 0 (from 0)
Unpacking objects: 100% (6/6), 1.88 KiB | 641.00 KiB/s, done.
From https://github.com/nxmatic/git-filters
 * [new branch]      main       -> git-filters/main
> git read-tree --prefix=.git-filters -u git-filters/main -u
```
* add a json filter
```
> git config --local filter.sops-json.clean ".git-filters/git-sops clean %f json"
> git config --local filter.sops-json.smudge "git-filters/git-sops smudge %f json"
> git config --local filter.sops-json.required true
```
