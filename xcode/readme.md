# Setup XCode Plugin Manager
- Open Keychain Acess to create a certificate
    + Use codesign as the certificate type
- Run below terminal command to sign the xcode using the certificate we just created.
     ```
        sudo codesign -f -s XcodeSigner /Applications/Xcode.app
     ```
- Install Alcatraz which is a xcode plugin manager
    ```
        curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh
    ```
- Restart the xcode, go to window -> package manager to install the plugins that you want.
- After installed plugins, exit the xcode, run below command to add the UUID to each plugin, so that those plugins can be recognized by the xcode.
    ```
        find ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins -name Info.plist -maxdepth 3 | xargs -I{} defaults write {} DVTPlugInCompatibilityUUIDs -array-add `defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID`
    ```
- Restart the xcode and load all the bundles/plugins, now you can see they are working now.

# plugins to install
https://github.com/vampirewalk/ObjectGraph-Xcode
https://github.com/kimsungwhee/KSHObjcUML

