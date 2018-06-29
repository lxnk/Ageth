--
--  AppDelegate.applescript
--  Ageth
--
--  Created by Alex Kashuba on 24.07.17.
--  Copyright (c) 2017 OK Tech. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
	
    
    --property theSyncModePopup : missing value
    
    property theWalletPathWidget : missing value
    
    property theSyncMode : "light"
    
    property theWalletPath : missing value
    
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened
        
         set thePath to POSIX path of "/Users/sk/Library/Application Support/Ethereum Wallet/binaries/"
         set theNSURL to current application's class "NSURL"'s fileURLWithPath_(thePath)
         theWalletPathWidget's setURL:theNSURL
         
         --set theWalletPath to "file:///Users/sk/Library/Application%20Support/Ethereum%20Wallet/"
         
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_




    
    on startButton_(sender)

        set theWalletPath to "file:///Users/sk/Library/Application%20Support/"


        log theSyncMode
        
        log theWalletPath
        
        --tell application "Terminal"
        --    do script "cd ~/Library/Application\\ Support/Ethereum\\ Wallet/binaries/Geth/unpacked; ./geth --syncmode light"
        --end tell
        
        --tell application "Terminal" to activate
        
    end startButton_
    
    on setWalletPath_(sender)

        
        
        
        --log thePath
        
        --theWalletPathWidget's setURL:"/Users"
        
        --theWalletPathWidget's setURL:"/Users/sk/Desktop"
        
        
        --set thePath to "/Users/sk/Desktop"
        
        --set thePath to "Macintosh HD:Users:sk:Desktop:"
        --set thePath to "/Users/sk/Desktop/"


        --set thePath to POSIX path of (choose folder)
        --set theNSURL to current application's class "NSURL"'s fileURLWithPath_(thePath)
        --theWalletPathWidget's setURL:theNSURL
        
        --log thePath
        log theWalletPath
        
        
    end setWalletPath_

end script