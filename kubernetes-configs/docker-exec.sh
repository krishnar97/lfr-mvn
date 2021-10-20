docker build -t rkrishna79/liferay-dxp:7.2.10-sp5-BUILD_NO .
DEL_TAG=BUILD_NO
echo $(( DEL_TAG-3 ))
if [[ "$(docker images -q rkrishna79/liferay-dxp:7.2.10-sp5-$(( DEL_TAG-3 )) 2> /dev/null)" != "" ]]; then
   docker rmi rkrishna79/liferay-dxp:7.2.10-sp5-$(( DEL_TAG-3 ))
fi