//
//  CCBusMacro.h
//  RealTimeBus
//
//  Created by lizhaojie on 16/5/24.
//  Copyright © 2016年 siemens. All rights reserved.
//

#ifndef CCBusMacro_h
#define CCBusMacro_h
#import <Masonry.h>
#import <JLRoutes/JLRoutes.h>

#define HistoryDataFileName @"history"

// keys for setting
#define SiemensStyleToggle @"SiemensStyleToggle"
#define OfflineToggle      @"OfflineToggle"

#define SimensStylization_preFix @"simensStylization_"

#define NavgationItemLeftBtn_ImageName @"back"
#define NavgationItemRightMapBtn_ImageName @"map_icon"


#define BUSALERTMODEL_FILENAME @"/busbellModel1.swh"
#define CONTENTOFFSET_KEYPATH @"contentOffset"
#define REFRESHBELLSTATE @"ccbusRefreshBell"
#define SHOWTOASTNOTIFACATION @"ccbusShowToastnotification"
#define BUSDETAIL_NOIMAGE @"stop_noimage"

#define BELLBusTakeOn_Notifacation_name @"buscome"
#define BELLBusTakeOn_Notifacation_key @"buscomenotification"

#define BELLBusDropOff_Notifacation_name  @"busdown"
#define BELLBuSDropOff_Notifacation_key  @"busdownnotification"

#define PostLocationTimeKey @"postlocationName"

//#define BELLLOCALNOTIFICATIONNAME @"buslocalnotification"
//#define BELLLOCALNOTIFICATIONKEY @"localNotification"


#define LOCATIONFAILED @"定位失败"
#define LOCATIONSUCCESS @"定位失败"
#define NOOPENLOCATIONSERVER @"未开启定位服务"
#define OPENLOCATIONSERVER @"开启定位"
#define OPENINTHSETTIONG @"请在设置中打开"

#define TABBARHIDEN @"tabBarHidden" 
#define TABBARSHOW @"tabBarShow" 

#define NOBUSCANSET @"没有可设置的公交"

#define LOADINGFAILED @"加载失败"
//#define LOADINGSUCCESS @"加载成功"

#define CANCELBELLSUCCESS @"取消提醒成功"
#define BELLSETSUCCESS  @"提醒设置成功"
#define BELLCLOSESUCCESS @"提醒关闭成功"

#define RefreshBusLocationNotification @"refreshBusNotification"
#define ChangeSearchBarStatus @"changeSearchBarStatus"

#define DownBusSwitchTag  210
#define ComeBusSwitchTag  211

#define BUS_Empty_Color 0x56cade
#define BUS_Comfortable_Color 0xa5b319
#define BUS_Crowded_Color 0xf5881f
#define BUS_Full_Color 0xe84d22

#define BUS_EMPTY_ICON @"detail_empty"
#define BUS_COMFORTABLE_ICON @"detail_comfortable"
#define BUS_CROWED_ICON @"detail_crowded"
#define BUS_FULL_ICON @"detail_full"

#define BGCOLOR 0xebf0f5

#define SCREEN_WIDTH                    ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT                   ([UIScreen mainScreen].bounds.size.height)
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define UIColorWithRGBA(r,g,b,a)        [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]


#define FlexibleViewMaxContentOffsetY   70.0f
#define FlexibleViewContentTableViewCellHeight 100.0f

#define CCBUS_TABBAR_HEIGHT             62.0f
#define DOT_COORDINATE                  0.0f
#define STATUS_BAR_HEIGHT               20.0f
#define BAR_ITEM_WIDTH_HEIGHT           30.0f
#define NAVIGATION_BAR_HEIGHT           64.0f
#define TAB_TAB_HEIGHT                  49.0f
#define TABLE_VIEW_ROW_HEIGHT           NAVIGATION_BAR_HEIGHT
#define CONTENT_VIEW_HEIGHT_NO_TAB_BAR  (SCREEN_HEIGHT - STATUS_BAR_HEIGHT - NAVIGATION_BAR_HEIGHT)
#define CONTENT_VIEW_HEIGHT_TAB_BAR     (CONTENT_VIEW_HEIGHT_NO_TAB_BAR - TAB_TAB_HEIGHT)




#define IFISNIL(v)                      (v = (v != nil) ? v : @"")
#define IFISNILFORNUMBER(v)             (v = (v != nil) ? v : [NSNumber numberWithInt:0])
#define IFISSTR(v)                      (v = ([v isKindOfClass:[NSString class]]) ? v : [NSString stringWithFormat:@"%@",v])


#define ARROW_BUTTON_WIDTH              NAVIGATION_BAR_HEIGHT
#define NAV_TAB_BAR_HEIGHT              ARROW_BUTTON_WIDTH
#define ITEM_HEIGHT                     NAV_TAB_BAR_HEIGHT

#define NavTabbarColor                  UIColorWithRGBA(240.0f, 230.0f, 230.0f, 1.0f)
#define SCNavTabbarBundleName           @"SCNavTabBar.bundle"

#define SCNavTabbarSourceName(file) [SCNavTabbarBundleName stringByAppendingPathComponent:file]

#if __IPHONE_OS_VERSION_MIN_REQUIRED >= 70000
#define CCBUS_LABEL_TEXTSIZE(text, font, maxSize, mode) [text length] > 0 ? [text \
boundingRectWithSize:maxSize options:(NSStringDrawingUsesLineFragmentOrigin) \
attributes:@{NSFontAttributeName:font} context:nil].size : CGSizeZero;
#else
#define CCBUS_LABEL_TEXTSIZE(text, font, maxSize, mode) [text length] > 0 ? [text \
sizeWithFont:font constrainedToSize:maxSize lineBreakMode:mode] : CGSizeZero;
#endif

//#define CCBUS_Service_BaseUrl @"http://42.159.204.10:8080/mobility/api/service/"
//#define CCBUS_Suggest_BaseUrl @"http://42.159.204.10:8080/mobility/api/suggest/"
#define CCBUS_Service_BaseUrl @"http://42.159.152.220:8080/mobility/api/service/"
#define CCBUS_Suggest_BaseUrl @"http://42.159.152.220:8080/mobility/api/suggest/"

#define  Suggest_url @"stop"
#define  Stops_url @"stop/"
#define  SearchStop_url @"stop/group"

#define LineDtail_url @"line/"
#define LineStops_url  @"line/"
#define Bus_url @"bus/"

#endif /* CCBusMacro_h */
