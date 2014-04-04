//
//  NSData+Speakable.h
//  codeLicense
//
//  Created by Dominique on 30/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Speakable)

- (NSString *)encodeAsSpeakableString;
+ (NSData *)dataWithSpeakableString:(NSString *)s error:(NSError **)e;

@end
