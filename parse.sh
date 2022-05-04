#!/bin/bash

# NXP Release
BRANCH="honister-5.15.5-1.0.0"

RN="IMX_LINUX_RELEASE_NOTES.pdf"
REPO_METAIMX="https://source.codeaurora.org/external/imx/meta-imx"
SCR="SCR-5.15.5-1.0.0.txt"

# Install packages, if needed
hostPkg() {
    [ ! -f /usr/bin/pdfgrep ] && \
	sudo apt install -y pdfgrep
}

gitclone() {
	echo "git clone $REPO_METAIMX -b $BRANCH --depth=1"
	git clone $REPO_METAIMX -b $BRANCH --depth=1
	
}



# REL=$(pdfgrep 'Rev. LF5' $RN | head -1)
# echo $REL

# Clone meta-imx - user must provide branch
[ ! -d meta-imx ] && gitclone

#Release - Linux 5.15.5-1.0.0

pushd meta-imx
FN_FW_POWER="firmware-upower"
FN_FW_SENTINEL="firmware-sentinel"
FN_M33DEMO="imx8ulp-m33-demo"
REV=$(egrep "^Release - Linux" $SCR)
KER=$(echo $REV | cut -d ' ' -f4 | cut -d '-' -f1 )
REL=$(echo $REV | cut -d ' ' -f4 | cut -d '-' -f2)
FW_UPOW=$(grep $FN_FW_POWER $SCR)
FWPOW=$(echo $FW_UPOW | cut -d ' ' -f2)
FW_SENT=$(grep $FN_FW_SENTINEL $SCR)
FWSENT=$(echo $FW_SENT | cut -d ' ' -f2)
FW_M33=$(grep $FN_M33DEMO $SCR)
FWM33DEMO=$(echo $FW_M33 | cut -d ' ' -f2)
echo $KER 
echo $REL
echo $FWPOW
echo $FWSENT
echo $FWM33DEMO

popd

exit

