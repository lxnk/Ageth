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
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened
         set theWalletPath to POSIX path of "~/Library/Application\\ Support/Ethereum\\ Wallet"
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_



    property theSyncModePopup : missing value
    
    property theWalletPathWidget : missing value
    
    on startButton_(sender)
        --tell application "Terminal"
        --    do script "cd ~/Library/Application\\ Support/Ethereum\\ Wallet/binaries/Geth/unpacked; ./geth --syncmode light"
        --end tell
        
        
        
        --log thePath
        
        --theWalletPathWidget's setURL:"/Users"
        
        --theWalletPathWidget's setURL:"/Users/sk/Desktop"
        
        
        --set thePath to "/Users/sk/Desktop"
        
        --set thePath to "Macintosh HD:Users:sk:Desktop:"
        --set thePath to "/Users/sk/Desktop/"
        set thePath to path of (choose folder)
        
        log thePath
        
        set theNSURL to current application's class "NSURL"'s fileURLWithPath_(thePath)
        
        
        theWalletPathWidget's setURL:theNSURL
        
        
        --tell application "Terminal" to activate
    end startButton_

end script