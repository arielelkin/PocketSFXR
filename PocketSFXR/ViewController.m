//
//  ViewController.m
//  PocketSFXR
//
//  Created by Ariel Elkin on 25/06/2014.
//  Copyright (c) 2014 Ariel. All rights reserved.
//

#import "ViewController.h"

#import "AEAudioController.h"
#import "AEBlockChannel.h"

@implementation ViewController {
    AEAudioController *audioController;
    AEBlockChannel *channel;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];

    //Setup audio controller:
    audioController = [[AEAudioController alloc] initWithAudioDescription:[AEAudioController nonInterleaved16BitStereoAudioDescription]];
    NSError *audioControllerStartError;
    [audioController start:&audioControllerStartError];
    if (audioControllerStartError) {
        NSLog(@"error starting audioEngine: %@", audioControllerStartError);
        return;
    }

    channel = [AEBlockChannel channelWithBlock:^(const AudioTimeStamp *time, UInt32 frames, AudioBufferList *audio) {

    }];

    [audioController addChannels:@[channel]];

}

@end
