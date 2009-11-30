//
//  Notifier.m
//  Notifier
//
//  Created by Vamsi Krishna Davuluri on 30/11/09.
//  Copyright 2009 Sathyabama. All rights reserved.
//

#import "Notifier.h"
#import <Foundation/Foundation.h>	


@implementation Notifier
- (void)awakeFromNib

{	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	bool arg = [[NSUserDefaults standardUserDefaults]stringForKey:@"bool"];
	if (arg = YES) {
		[textField setStringValue:@"iMAGE uploaded, check Clipboard!"];
		
	}
	else {
		[textField setStringValue:@"iMAGE upload failed, please try again!"];
		
	}
	[pool release];
    [NSThread detachNewThreadSelector:@selector(exitZero:) toTarget:[Notifier class] withObject:nil];

}

+(void)exitZero:(id)param 
{
	sleep(1.5);
	exit(0);
}
@end

