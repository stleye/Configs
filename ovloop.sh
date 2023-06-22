#!/bin/bash

export OVLOOP=$DEVELOPER/OVLoop/ov-loop-ios
export OVLOOP1=$DEVELOPER/OVLoop/ov-loop-ios-1
export WALLET=$DEVELOPER/OVLoop/ov-wallet-ios
export VALET=$DEVELOPER/OVLoop/ov-valet-sdk-ios
export OVSDK=$DEVELOPER/OVLoop/ov-sdk
export OVHEADSET=$DEVELOPER/OVLoop/ov-headset-ios
export OVALEXA=$DEVELOPER/OVLoop/ov-alexa-ios
export OVSDKCOMMON=$DEVELOPER/OVLoop/ov-sdk-common-ios
export OVVOICEFIRST=$DEVELOPER/OVLoop/ov-voicefirst-ios
export OVTOOLBOX=$DEVELOPER/OVLoop/ov-toolbox-ios

alias ovloop='cd "$OVLOOP"'
alias ovloop1='cd "$OVLOOP1"'
alias wallet='cd $WALLET'
alias valet='cd $VALET'
alias ovsdk='cd $OVSDK'
alias headset='cd $OVHEADSET'
alias alexa='cd $OVALEXA'
alias sdkcommon='cd $OVSDKCOMMON'
alias voicefirst='cd $OVVOICEFIRST'
alias ovtoolbox='cd $OVTOOLBOX'


function localWallet() {
	POD_LOCAL_WALLET_NO_ESCAPES="\tpod \'OVWalletSDK\'\, \t :path \=> \"$WALLET\""
	POD_LOCAL_WALLET=$(echo $POD_LOCAL_WALLET_NO_ESCAPES | sed "s/\//\\\\\\//g")
	sed -n '/OVWalletSDK/=' Podfile | xargs -I '{}' sed "{}s/.*/$POD_LOCAL_WALLET/" Podfile > Podfile.out 
	rm Podfile && mv Podfile.out Podfile
}

function localOVSDK() {
	python $CONFIG/ovloop.py localOVSDK
}

function localAlexa() {
	python $CONFIG/ovloop.py localAlexa
}

function localOVToolbox() {
	python $CONFIG/ovloop.py localOVToolbox
}

function localValet() {
	POD_LOCAL_VALET_NO_ESCAPES="\tpod \'OVValetSDK\'\, \t :path \=> \"$VALET\""
	POD_LOCAL_VALET=$(echo $POD_LOCAL_VALET_NO_ESCAPES | sed "s/\//\\\\\\//g")
	sed -n '/OVValetSDK/=' Podfile | xargs -I '{}' sed "{}s/.*/$POD_LOCAL_VALET/" Podfile > Podfile.out 
	rm Podfile && mv Podfile.out Podfile
}
