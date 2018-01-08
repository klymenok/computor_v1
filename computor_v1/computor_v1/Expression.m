
#import <Cocoa/Cocoa.h>
#import "Expression.h"
#import <math.h>

@implementation Expression

- (id) init {
    self = [super init];
    [self setA:1];
    [self setB:2];
    [self setC:1];
    return self;
}

- (int) discriminant {
    return _b * _b - 4 * _a * _c;
}


// поиск делителя своодного члена

- (void) solution {
    int discr = [self discriminant];
    if (discr < 0) {
        _x1 = 0;
        _x2 = 0;
        printf("No real solution\n");
    } else if (discr == 0) {
        _x1 = -_b / (2 * _c);
        _x2 = _x1;
        printf("Only one solution, result = %f\n", _x1);
    } else if (discr > 0) {
        printf("Two solutions\n");
        _x1 = (-_b + pow(discr, 0.5)) / (2 * _c);
        printf("res1 = %f\n", _x1);
        _x2 = (-_b - pow(discr, 0.5)) / (2 * _c);
        printf("res2 = %f\n", _x2);
    } else {
        printf("Exception\n");
    }
}

- (void) setA : (int) a {
    _a = a;
}

- (void) setB : (int) b {
    _b = b;
}

- (void) setC : (int) c {
    _c = c;
}
@end
