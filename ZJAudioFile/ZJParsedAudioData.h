//
//  ZJParsedAudioData.h
//  ZJAudioFile
//
//  Created by 吴孜健 on 2018/2/26.
//  Copyright © 2018年 吴孜健. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreAudio/CoreAudioTypes.h>

@interface ZJParsedAudioData : NSObject

@property (nonatomic, strong) NSData *data;
@property (nonatomic, assign) AudioStreamPacketDescription packetDescription;

+ (instancetype)parsedAudioDataWithBytes:(const void *)bytes packetDescription:(AudioStreamPacketDescription)packetDescription;

@end
