//
//  TrackMixAppDelegate.m
//  TrackMix
//
//  Created by Joe Sturtevant on 8/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TrackMixAppDelegate.h"
#import "Track.h"

@implementation TrackMixAppDelegate

@synthesize window;
@synthesize textField;
@synthesize slider;
@synthesize track;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    Track *aTrack = [[Track alloc] init];
    
    [self setTrack:aTrack];
    
    [aTrack release];

    [self updateUserInterface];
    
    // Insert code here to initialize your application
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
 
    float newValue = [sender floatValue];

    [self.track setVolume:newValue];
    
    [self updateUserInterface];
    
    
/*    
    NSString *senderName = nil;
    if (sender == textField) {
        senderName = @"textField";
    }
    else {
        senderName = @"slider";
    }
    NSLog(@"%@ sent takeFloatValueForVolumeFrom:withvalue %1.2f", senderName, [sender floatValue]);
*/
}

- (IBAction)mute:(id)sender {

    [self.track setVolume:0.0];
    [self updateUserInterface];
    
//    NSLog(@"received a mute: message");

}

- (void)dealloc {
    
    [track release];
    [super dealloc];
}

- (void)updateUserInterface {
    
    float volume = [self.track volume];
    
    [self.textField setFloatValue:volume];
    
    [self.slider setFloatValue:volume];
    
}

- (IBAction)stnh:(id)sender {
}

@end
 