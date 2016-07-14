//
//  Car.m
//  sample
//
//  Created by Alexandra on 14/07/16.
//  Copyright © 2016 Alexandra. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)initWithFuel:(NSString *)fuel
     withColor:(NSString *)color
      andMotor:(NSString *)motor
{
    self = [super init];
    if (self) {
        _fuel = fuel;
        _motor = motor;
        _color = color;
    }
    return self;
}

@end
