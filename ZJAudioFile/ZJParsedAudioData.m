//
//  ZJParsedAudioData.m
//  ZJAudioFile
//
//  Created by 吴孜健 on 2018/2/26.
//  Copyright © 2018年 吴孜健. All rights reserved.
//

#import "ZJParsedAudioData.h"

@implementation ZJParsedAudioData

+ (instancetype)parsedAudioDataWithBytes:(const void *)bytes packetDescription:(AudioStreamPacketDescription)packetDescription
{
    return [[self alloc]initWithBytes:bytes packetDescription:packetDescription];
}

- (instancetype)initWithBytes:(const void *)bytes packetDescription:(AudioStreamPacketDescription)packetDescription
{
    if (bytes == NULL || packetDescription.mDataByteSize == 0) {
        return nil;
    }
    
    if (self = [super init]) {
        if (self) {
            _data = [NSData dataWithBytes:bytes length:packetDescription.mDataByteSize];
            _packetDescription = packetDescription;
        }
    }
    return self;
}

@end
