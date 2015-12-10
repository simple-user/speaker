//
//  AppDelegate.h
//  speaker
//
//  Created by robert on 12/11/15.
//  Copyright (c) 2015 san. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSSpeechSynthesizerDelegate>
{
    NSSpeechSynthesizer *speaker;
}
@property (weak) IBOutlet NSTextField *textfield;

- (IBAction)startButton:(id)sender;
- (IBAction)stopButton:(id)sender;


@end

	