mydockerhubname=$1

docker tag star ${mydockerhubname}/star
sudo docker push ${mydockerhubname}/star
