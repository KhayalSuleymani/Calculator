//
//  CalculatorKit.m
//  CalculatorKit
//
//  Created by Mohammad reza Koohkan on 4/21/1399 AP.
//  Copyright © 1399 AP Mohamadreza Koohkan. All rights reserved.
//

#import <Foundation/Foundation.h>

__attribute__((constructor)) void initialize_archs(void) {
    NSLog(@"CalculatorKit.dylib loaded");
}
