//
//  CarouselRDATesterAppDelegate.h
//  CarouselRDATester
//
//  Created by Scott Jann on 8/13/10.
//  Copyright 2010 Scott Jann. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CarouselRDATesterAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	NSTextField *serverField;
	NSTextField *portField;
	NSTextView *commandField;
	NSTextView *resultField;
	NSComboBox *exampleList;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *serverField;
@property (assign) IBOutlet NSTextField *portField;
@property (assign) IBOutlet NSTextView *commandField;
@property (assign) IBOutlet NSTextView *resultField;
@property (assign) IBOutlet NSComboBox *exampleList;

- (IBAction)fillExample:(id)sender;
- (IBAction)sendCommand:(id)sender;

@end
