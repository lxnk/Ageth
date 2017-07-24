//
//  main.m
//  Ageth
//
//  Created by Alex Kashuba on 24.07.17.
//  Copyright (c) 2017 OK Tech. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
