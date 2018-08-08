/**
 * @file TouchBarController.h
 *
 * @copyright 2018 Bill Zissimopoulos
 */
/*
 * This file is part of TouchBarDock.
 *
 * You can redistribute it and/or modify it under the terms of the GNU
 * General Public License version 3 as published by the Free Software
 * Foundation.
 */

#import <Cocoa/Cocoa.h>

@interface TouchBarController : NSObject <NSTouchBarDelegate>
- (BOOL)present;
- (BOOL)presentWithPlacement:(NSInteger)placement;
- (void)dismiss;
- (IBAction)customize:(id)sender;
@property (retain) IBOutlet NSTouchBar *touchBar;
@end