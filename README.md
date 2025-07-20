# Inventory
Boilerplate inventory for ansible-autobott

## Usage

To set up your own inventory we recommend to clone this repository and push it to your own git.

1. Clone this repository 
```
git clone git@github.com:ansible-autobott/inventory.git
cd inventry
```
2. remove the original remote
```
git remote remove origin
```
3. add the new remote, replace the URL with your new repository's address.

```
git remote add origin https://github.com/your-username/your-new-repo.git
```

4. check your remote
```
git remote -v
```
5. push to your new repository
```
git branch -M main 
git push -u origin main
```

