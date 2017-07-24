--
--  AppDelegate.applescript
--  Ageth
--
--  Created by Alex Kashuba on 24.07.17.
--  Copyright (c) 2017 OK Tech. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
    
    
    property theSyncModePopup : missing value
    
    on startButton_(sender)
        tell application "Terminal"
            do script "cd ~/Library/Application\\ Support/Ethereum\\ Wallet/binaries/Geth/unpacked; ./geth --syncmode light"
        end tell
    end startButton_
	
	-- IBOutlets
	property theWindow : missing value
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened 
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_

    
end script