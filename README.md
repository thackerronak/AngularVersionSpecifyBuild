# AngularVersionSpecifyBuild

1. Install Docker and Start Docker
2. copy following files in project root directory => Dockerfile and script.sh
3. command execute => chmod +x script.sh
4. open script.sh file
5. line number 2, 3, 9 and 10 change with project build directory name => for example prod-customer, prod-tech-admin
6. open Dockerfile file
7. line number 1 change node version as per your current project
8. line number 13 change with current angular cli version as per your package.json file => key name in devDependencies "@angular/cli": "^1.7.4"
9. line number 17 and 18 change with your current project build command => ng build --app app-customer --target=production
10. Run script with passing version number => ./script.sh "v1"

