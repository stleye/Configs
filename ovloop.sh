#!/bin/bash

export OVLOOP=$DEVELOPER/OVLoop/ov-loop-ios/OV\ Loop/
export WALLET=$DEVELOPER/OVLoop/ov-wallet-ios
export VALET=$DEVELOPER/OVLoop/ov-valet-sdk-ios

alias ovloop='cd "$OVLOOP"'
alias wallet='cd $WALLET'
alias valet='cd $VALET'


function localWallet() {
	POD_LOCAL_WALLET_NO_ESCAPES="\tpod \'OVWalletSDK\'\, \t :path \=> \"$WALLET\""
	POD_LOCAL_WALLET=$(echo $POD_LOCAL_WALLET_NO_ESCAPES | sed "s/\//\\\\\\//g")
	sed -n '/OVWalletSDK/=' Podfile | xargs -I '{}' sed "{}s/.*/$POD_LOCAL_WALLET/" Podfile > Podfile.out 
	rm Podfile && mv Podfile.out Podfile
}

function localValet() {
	POD_LOCAL_VALET_NO_ESCAPES="\tpod \'OVValetSDK\'\, \t :path \=> \"$VALET\""
	POD_LOCAL_VALET=$(echo $POD_LOCAL_VALET_NO_ESCAPES | sed "s/\//\\\\\\//g")
	sed -n '/OVValetSDK/=' Podfile | xargs -I '{}' sed "{}s/.*/$POD_LOCAL_VALET/" Podfile > Podfile.out 
	rm Podfile && mv Podfile.out Podfile
}
