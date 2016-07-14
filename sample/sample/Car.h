//
//  Car.h
//  sample
//
//  Created by Alexandra on 14/07/16.
//  Copyright © 2016 Alexandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property NSString *fuel;
@property (readonly) NSString *color;
@property (readonly) NSString *motor;

- (instancetype)initWithFuel:(NSString *)fuel
     withColor:(NSString *)color
      andMotor:(NSString *)motor;

@end
