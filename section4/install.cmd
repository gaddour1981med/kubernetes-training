#install istio
curl -L https://istio.io/downloadIstio | sh -
cd istio-1.23.2
export PATH=$PWD/bin:$PATH
istioctl install 
#add istio injection to default namespace
kubectl label namespace default istio-injection=enabled
