//
//  LZJMacro.h
//
//  Created by lizhaojie on 16/5/24.
//  Copyright © 2016年 siemens. All rights reserved.
//

#ifndef LZJMacro_h
#define LZJMacro_h
#import <Masonry.h>
#import <JLRoutes/JLRoutes.h>

#define BGCOLOR 0xebf0f5
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define UIColorWithRGBA(r,g,b,a)        [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define NavTabbarColor                  UIColorWithRGBA(240.0f, 230.0f, 230.0f, 1.0f)

#endif /* LZJMacro_h */
