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
	
	NSString *arg = [[NSUserDefaults standardUserDefaults]stringForKey:@"bool"];
	NSLog(@"this is %@",arg);
	NSComparisonResult result = [arg compare: @"YES"];
	NSLog(@"this is %d",result);
	if (result == 0) {
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
	sleep(2);
	exit(0);
}
@end

