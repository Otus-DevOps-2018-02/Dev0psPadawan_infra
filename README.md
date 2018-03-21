# Dev0psPadawan_infra
Dev0psPadawan Infra repository

bastion_IP = 35.205.64.104 
someinternalhost_IP = 10.132.0.3


gcloud compute instances create reddit-app\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --zone europe-west1-d \
  --metadata-from-file startup-script=./startup_script.sh

testapp_IP = 35.205.36.8
testapp_port = 9292

gcloud compute firewall-rules create default-puma-server \
>  --network default \
>  --direction INGRESS \
>  --allow tcp:9292 \
>  --target-tags

