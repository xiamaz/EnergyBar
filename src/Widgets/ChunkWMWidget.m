//
//  ChunkWMWidget.m
//  EnergyBar
//
//  Created by Max Zhao on 19/03/2019.
//  Copyright © 2019 Bill Zissimopoulos. All rights reserved.
//

#import "ChunkWMWidget.h"
#import "TouchBarController.h"

@interface ChunkWMBarController : TouchBarController
@end

@implementation ChunkWMBarController
+ (id)controller
{
    return [self controllerWithNibNamed:@"ChunkWMBar"];
}
@end


@interface ChunkWMWidget()
@property (retain) ChunkWMBarController *chunkWMBarController;
@end

@implementation ChunkWMWidget
{
    SEL longAction;
    id longTarget;
    SEL shortAction;
    id shortTarget;
}

- (void)commonInit
{
    [self setView: [NSButton buttonWithImage:[NSImage imageNamed:@"AppIcon"] target:self action:@selector(shortPressAction)]];
}

- (void)shortPressAction
{
    [shortTarget performSelector:shortAction withObject:self];
}

@end
