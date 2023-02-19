//
//  NSObject+Property.m
//  CCYunKit
//
//  Created by 赵郧陕 on 2023/1/3.
//

#import "NSObject+Property.h"
#import <objc/runtime.h>

@implementation NSObject (Property)

-(NSString *)reuseIdentifer{
    return (NSString *)objc_getAssociatedObject(self, "reuseIdentifer");
}

-(void)setReuseIdentifer:(NSString *)reuseIdentifer{
    objc_setAssociatedObject(self, "reuseIdentifer", reuseIdentifer, OBJC_ASSOCIATION_COPY);
}

-(void)setRoutePath:(NSString *)routePath{
    objc_setAssociatedObject(self, "routePath", routePath, OBJC_ASSOCIATION_ASSIGN);
}
-(NSString *)routePath{
    return (NSString *)objc_getAssociatedObject(self, "routePath");
}

-(void)setRouteParams:(NSDictionary *)routeParams{
    objc_setAssociatedObject(self, "routeParams", routeParams, OBJC_ASSOCIATION_RETAIN);
}

-(NSDictionary *)routeParams{
    return (NSDictionary *)objc_getAssociatedObject(self, "routeParams");
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}
@end
