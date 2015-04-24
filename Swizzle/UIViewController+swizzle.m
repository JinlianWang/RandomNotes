//
//  UIViewController+swizzle.m
//  CardCompanion
//
//  Created by Wang, Jinlian on 4/24/15.
//  Copyright (c) 2015 Capital One. All rights reserved.
//

#import "UIViewController+swizzle.h"
#import "JRSwizzle.h"

@implementation UIViewController (swizzle)

+(void)load{
    NSError *error = nil;
    [UIViewController jr_swizzleMethod:@selector(viewWillAppear:) withMethod:@selector(xxx_viewWillAppeadr:) error:&error];
    assert(error == nil);
}

- (void)xxx_viewWillAppeadr:(BOOL)animated {
    [self xxx_viewWillAppeadr:animated];
    NSLog(@"viewWillAppear: %@", NSStringFromClass([self class]));
}

@end
