#install istio
curl -L https://istio.io/downloadIstio | sh -
cd istio-1.23.2
export PATH=$PWD/bin:$PATH
istioctl install 
#add istio injection to default namespace
kubectl label namespace default istio-injection=enabled


#install dnsmask
sudo systemctl disable --now systemd-resolved
sudo systemctl stop systemd-resolved
sudo apt install dnsmasq
#ajouter le fichier config de dnsmask
sudo systemctl restart dnsmasq
