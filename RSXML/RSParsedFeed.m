//
//  RSParsedFeed.m
//  RSXML
//
//  Created by Brent Simmons on 7/12/15.
//  Copyright © 2015 Ranchero Software, LLC. All rights reserved.
//

#import "RSParsedFeed.h"

@implementation RSParsedFeed

- (instancetype)initWithURLString:(NSString *)urlString title:(NSString *)title link:(NSString *)link articles:(NSArray *)articles {
	
	self = [super init];
	if (!self) {
		return nil;
	}
	
	_urlString = urlString;
	_title = title;
	_link = link;
	_articles = articles;
	
	return self;
}

- (NSString*)description {
	return [NSString stringWithFormat:@"{%@ (%@), title: '%@', subtitle: '%@', entries: %@}",
			[self class], _link, _title, _subtitle, _articles];
}

@end
