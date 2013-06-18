//
//  UIButton+CustomProperties.m
//  CategoryProperties
//
//  Created by James Border on 6/18/13.
//  Copyright (c) 2013 James Border. All rights reserved.
//

#import "UIButton+CustomProperties.h"
#import <objc/runtime.h>

@implementation UIButton (CustomProperties)

static char clientKey;
static char miscDataKey;

- (void)setClient:(NSString *)client {
	objc_setAssociatedObject( self, &clientKey, client, OBJC_ASSOCIATION_RETAIN );
}

- (NSString *)client {
	return objc_getAssociatedObject(self, &clientKey);
}

- (void)setMiscData:(NSString *)miscData {
	objc_setAssociatedObject( self, &miscDataKey, miscData, OBJC_ASSOCIATION_RETAIN );
}

- (NSString *)miscData {
	return objc_getAssociatedObject(self, &miscDataKey);
}

@end
