//
//  Expression.h
//  computor_v1
//
//  Created by Klymenok Alexey on 12/3/17.
//  Copyright © 2017 Klymenok Alexey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface Expression : NSObject {
    int     _a;
    int     _b;
    int     _c;
    double  _x1;
    double  _x2;
}
- (int) discriminant;
- (void) solution;
- (void) setA: (int) a;
- (void) setB: (int) b;
- (void) setC: (int) c;


//- (int) findDegree;

@end
