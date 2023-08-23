//
//  RNI18n.m
//  RNI18n
//
//  Created by Alexander Zaytsev on 14/06/15.
//  Copyright (c) 2015 Alexander Zaytsev. All rights reserved.
//  UPDATE by Mehmet Karabulut on 23/08/2023

#import "RNI18n.h"

@interface RNI18n ()
-(NSString*) getCurrentLocale;
@end

@implementation RNI18n
RCT_EXPORT_MODULE();

-(NSString*) getCurrentLocale{
    NSString *localeString=[[NSLocale preferredLanguages] objectAtIndex:0];
    return localeString;
}

- (NSDictionary *)constantsToExport
{
    return @{ @"locale": [self getCurrentLocale] };
}
@end
