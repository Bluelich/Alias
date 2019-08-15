alias zshconfig="st ~/.zshrc"
alias ohmyzsh="open ~/.oh-my-zsh"
alias podcache="open ~/Library/Caches/CocoaPods/Pods/Release;"
alias podupdate="pod update --no-repo-update --verbose"
alias podinstall="pod install --no-repo-update --verbose"
#alias uninstallhomebrew="/usr/bin/ruby -e \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)\";"
#alias installhomebrew="/usr/bin/ruby -e \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)\";"
alias resetlaunchpad="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock;"
alias resetlaunchservices="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user;killall Finder;"
alias resetsimulator="xcrun simctl list | grep -oh '[A-Z0-9]\{8\}-[A-Z0-9]\{4\}-[A-Z0-9]\{4\}-[A-Z0-9]\{4\}-[A-Z0-9]\{12\}' | xargs -I{} xcrun simctl erase {};"
alias resetsimulator2="xcrun simctl erase all"
alias simulatorfolder="open /Library/Developer/CoreSimulator/Profiles/Runtimes"
alias simulatorTypes="xcrun simctl list devicetypes"
alias switchtozsh="chsh -s /bin/zsh;"
alias itunesapppath="open /Users/`whoami`/Music/iTunes/iTunes\ Media;"
alias useproxy="export ALL_PROXY=socks5://127.0.0.1:1080"
alias useproxy_surge="export https_proxy=http://127.0.0.1:6152;export http_proxy=http://127.0.0.1:6152"
function ss_on(){export ALL_PROXY=socks5://127.0.0.1:1080;echo "已开启代理";}
function ss_off(){unset ALL_PROXY;echo "已关闭代理";}
function gi(){curl -L -s https://www.gitignore.io/api/$@;}
alias boostlocalbin="chmod +rw /usr/local/bin;"
alias aliasmanagergrep="open ~/Library/Containers/Oak.AliasManager/Data/Library/Application\ Support/Oak.AliasManager/aliasmanager_alias;"
alias pluginFolder="open ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins;"
#alias XcodePluginTinker="curl -fsSL https://raw.githubusercontent.com/Bluelich/XcodePluginTinker/master/XcodePluginTinker.sh | sh;"
alias profilefolder="open /Users/`whoami`/Library/MobileDevice/Provisioning\ Profiles/;"
alias xcodethemefolder="open ~/Library/Developer/Xcode/UserData/FontAndColorThemes;"
#booted代表已启动且选中的模拟器 ctrl+c结束录制
alias simulatorRecoder="xcrun simctl io booted recordVideo --type=mp4 ~/Desktop/test.mp4"
alias addFileTosimulator="xcrun simctl addmedia booted ~/test.txt"
#alias simulatorOpenURL="xcrun simctl openurl booted http://maps.apple.com/?q=Mexican+Restaurant"
alias simulatorAppContainer="xcrun simctl get_app_container booted com.bluelich.test"
alias simulatorOpenAppContainer="open \`xcrun simctl get_app_container booted com.bluelich.test\` -a Finder"
#https://developer.apple.com/documentation/swift/commandline
alias openSimulator="xcrun simctl launch --console booted <BUNDLE ID> <YOUR ARGUMENTS>"
alias simulatorAppInfo="xcrun simctl appinfo booted com.bluelich.test"
alias swift_source="cd ~/GitHub/swift-source"
alias swift_source_update="swift_source;./swift/utils/update-checkout --clone"
alias swift_source_build="swift_source;cd swift;utils/build-script --release-debuginfo"
alias swift_source_docs="swift_source;cd swift/docs;open -a Google\ Chrome _build/html/contents.html"
alias profileinfo="security cms -D -i test.mobileprovision"
alias install_app_to_device="ios-deploy -L -W -r -d -v -b /path/to/test.app"

#alias archiveproject="cd ****path****;pod install;xcodebuild clean -workspace **name**.xcworkspace -scheme **name** -configuration Release;xcodebuild archive -workspace **name**.xcworkspace -scheme **name** -archivePath  ***path.xcarchive***;xcodebuild -exportArchive -exportOptionsPlist ***path.plist*** -archivePath **path.xcarchive** -exportPath **folder_path_ipa**;”
#alias showpeminfo="openssl x509 -in cert.pem -text -noout;
#openssl x509 -in cert.cer -text -noout;
#openssl x509 -in cert.crt -text -noout;"
#alias showderinfo="openssl x509 -in certificate.der -inform der -text -noout"
#alias Pem->Der="openssl x509 -in cert.crt -outform der -out cert.der;"
#alias DerToPem="openssl x509 -in cert.crt -inform der -outform pem -out cert.pem"
#alias signmobileconfig="openssl smime -sign -in udid.mobileconfig -out udidsinged.mobileconfig -signer InnovCertificates.pem -certfile AppleIncRootCertificate.pem -outform der -nodetach;"
alias man-to-pdf="man -t xcodebuild | pstopdf -i -o xcodebuild.pdf;"
alias man-preview="man -t xcodebuild | open -f -a Preview;"
# alias manfolder="open /Applications/Xcode.app/Contents/Developer/usr/share/man/;"

alias showallfiles="defaults write com.apple.finder AppleShowAllFiles -bool true;"
alias hideallfiles="defaults write com.apple.finder AppleShowAllFiles -bool false;"
alias run_applicationn_terminal="sudo xattr -rd com.bluelich.test /Applications/test.app;"
#gatekeeper
alias anywhere_enable="sudo spctl --master-disable;"
alias anywhere_disable="sudo spctl --master-enable;"
alias anywhere_status="spctl --status;"
#
alias trustdevicefolder="open /private/var/db/lockdown/;"
alias clearzshhistory="rm ~/.zsh_history;"
alias clearbashhistory="history -c;rm ~/.bash_history"
# alias xcodeuuid="defaults read /Applications/Xcode.app/Contents/Info.plist DVTPlugInCompatibilityUUID;"
# alias fixplugin="find ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins -name Info.plist -maxdepth 3 | xargs -I{} defaults write {} DVTPlugInCompatibilityUUIDs -array-add `defaults read /Applications/Xcode.app/Contents/Info.plist DVTPlugInCompatibilityUUID`;"
alias plugincachefolder="open ~/Library/Application\ Support/Alcatraz/Plug-ins;"
alias pluginfolder="open ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins;"
alias profilefolder="open ~/Library/MobileDevice;"
alias chownpermission="sudo chown -R `whoami` /usr/local;"
alias myaliases="open ~/Alias/alias.sh;"
alias sshlocalport="iproxy 2222 22;"
alias sshiphone="ssh -p 2222 root@localhost;"
alias sshiphone2="ssh -lroot 127.0.0.1 -p2222;"
alias md="macdown"
#alias view_a="file *.a; lipo *.a -thin arm64 -output *.a";ar -x *.a; nm *.0 > *.m ;
#alias create_framework="lipo -info *.framework;lipo -create a.framework/a b.framework/b -output **path**";
alias jenkinspassword="cat /Users/`whoami`/.jenkins/secrets/initialAdminPassword"
#alias xib_to_nib="find . -name "*.xib" -type f | awk '{sub(/.xib/,"");print}' | xargs -I % ibtool --compile %.nib %.xib";
#alias showpeminfo="openssl x509 -in cert.pem -text -noout;openssl x509 -in cert.cer -text -noout;openssl x509 -in cert.crt -text -noout;"
#alias showderinfo="openssl x509 -in certificate.der -inform der -text -noout"
#alias Pem->Der="openssl x509 -in cert.crt -outform der -out cert.der;"
#alias DerToPem="openssl x509 -in cert.crt -inform der -outform pem -out cert.pem"
#alias signmobileconfig="openssl smime -sign -in udid.mobileconfig -out udidsinged.mobileconfig -signer InnovCertificates.pem -certfile AppleIncRootCertificate.pem -outform der -nodetach;"

# for ios develop
# alias cd_proj_path="cd /path/to/proj";
# alias proj_podinstall="cd_proj_path;podinstall";
# alias proj_podupdate="cd_proj_path;podupdate";
# alias proj_archive_release=
# "
#  proj_podinstall;
#  xcodebuild clean -workspace proj.xcworkspace -scheme target_scheme -configuration Release;
#  xcodebuild archive -workspace proj.xcworkspace -scheme target_scheme -archivePath  /path/to/output.xcarchive;
#  xcodebuild -exportArchive -exportOptionsPlist /path/to/config.plist -archivePath /path/to/output.xcarchive -exportPath /path/to/export;
# "