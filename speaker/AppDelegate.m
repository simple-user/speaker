//
//  AppDelegate.m
//  speaker
//
//  Created by robert on 12/11/15.
//  Copyright (c) 2015 san. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    speaker = [[NSSpeechSynthesizer alloc] initWithVoice:NULL];
    [speaker setDelegate:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)startButton:(id)sender {
    [speaker startSpeakingString:[_textfield stringValue]];
}

- (IBAction)stopButton:(id)sender {
    [speaker stopSpeaking];
}

-(void)speechSynthesizer:(NSSpeechSynthesizer *)sender didFinishSpeaking:(BOOL)finishedSpeaking
{
    if(finishedSpeaking == YES)
        [_textfield setStringValue:@""];
}
@end
