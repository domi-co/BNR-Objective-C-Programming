//
//  main.m
//  ClassAct
//
//  Created by Dominique on 31/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

NSArray *BNRHierarchyForClass(Class cls)
{
    NSMutableArray *classHierarchy = [NSMutableArray array];
    for (Class c = cls; c != nil; c = class_getSuperclass(c)) {
        NSString *className = NSStringFromClass(c);
        [classHierarchy insertObject:className atIndex:0];
    }
    return classHierarchy;
}

NSArray *BNRMethodsForClass(Class cls)
{
    unsigned int methodCount = 0;
    Method *methodList = class_copyMethodList(cls, &methodCount);
    NSMutableArray *methodArray = [NSMutableArray array];
    
    for (int m = 0; m < methodCount; m++) {
        Method currentMethod = methodList[m];
        SEL methodSelector = method_getName(currentMethod);
        [methodArray addObject:NSStringFromSelector(methodSelector)];
    }
    return methodArray;
}

NSArray *BNRVariablesForClass(Class cls)
{
    unsigned int iVarCount = 0;
    Ivar* iVarList = class_copyIvarList(cls, &iVarCount);
    NSMutableArray *iVarArray = [NSMutableArray array];
    
    for (int i = 0; i < iVarCount; i++) {
        Ivar iVar = iVarList[i];
        const char *iVarName = ivar_getName(iVar);
        [iVarArray addObject:[NSString stringWithCString:iVarName encoding:NSUTF8StringEncoding]];
    }
    return iVarArray;
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *runtimeClassesInfo = [NSMutableArray array];
        
        unsigned int classCount = 0;
        
        Class *classList = objc_copyClassList(&classCount);
        
        for (int i = 0; i < classCount; i++) {
            Class currentClass = classList[i];
            NSString *className = NSStringFromClass(currentClass);
            
            NSArray *hierarchy = BNRHierarchyForClass(currentClass);
            NSArray *methods = BNRMethodsForClass(currentClass);
            NSArray *iVar = BNRVariablesForClass(currentClass);
            NSDictionary *classInfoDict = @{@"classname":className,
                                            @"hierarchy":hierarchy,
                                            @"methods":methods,
                                            @"iVar":iVar};
            [runtimeClassesInfo addObject:classInfoDict];
        }
        free(classList);
        
        NSSortDescriptor *alphaAsc = [NSSortDescriptor sortDescriptorWithKey:@"classname" ascending:YES];
        NSArray *sortedArray = [runtimeClassesInfo sortedArrayUsingDescriptors:@[alphaAsc]];
        NSLog(@"There are %ld classes registered with this program's runtime", sortedArray.count);
        NSLog(@"%@", sortedArray);
    }
    return 0;
}

