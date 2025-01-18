# Weegee Gwen

> I am going to be Diamond 1!

**STEPS**
1. Make the project as local repo
```bash
git init
git config --global user.name "Sorata"
git config --global user.email "weegeegwen.segundo@lorma.edu
```
## Prepare changes to be saved locally in the remote repository
```bash
git add .
 
## Commit/ Make changes final and make a save point
```bash
git commit -m "Description"

## rename branch 'master' to 'main'
```bash
git branch -M main
```


2. Create a remote repo in Github
## Link local repo to remote repository
```bash
git remote add origin <gitHubLink>
```
## Delete current logged account
```bash
git credential-cache exit
```
## Logging out an account
```bash
git credential-manager github logout 'username'
```

# push or upload our changes
```bash
git push -u origin main
```

3. Connect both repo so they are insync