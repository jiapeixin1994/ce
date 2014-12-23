//
//  RootoViewController.m
//  TestProject
//
//  Created by Jpxin on 14-10-14.
//  Copyright (c) 2014年 Jpxin. All rights reserved.
//

#import "RootoViewController.h"
#import "ZXLuminanceSource.h"
#import "ZXCGImageLuminanceSource.h"
#import "ZXBinaryBitmap.h"
#import "ZXDecodeHints.h"
#import "ZXMultiFormatReader.h"
#import "ZXResult.h"
#import "ZXHybridBinarizer.h"

@interface RootoViewController ()
{
    UIView *aaaaview;
    UIView *aaaaview2;

}
@end

@implementation RootoViewController
-(void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context
{
    //   [UIView commitAnimations];
   // [UIView commitAnimations];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
       /*
    self.view.backgroundColor=[UIColor redColor];
    
    [UIView animateWithDuration:5 animations:^{
      //  self.view
        self.view.backgroundColor=[UIColor blueColor];
    }];
  //  self.view.backgroundColor=[UIColor blueColor];
   aaaaview=[[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    aaaaview.backgroundColor=[UIColor redColor];
    [self.view addSubview:aaaaview];
    [self animationDidStop:@"lalall" finished:[NSNumber numberWithInt:2] context:nil];
    
    
    aaaaview2=[[UIView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    aaaaview2.backgroundColor=[UIColor redColor];
    [self.view addSubview:aaaaview2];
    
    [UIView beginAnimations:nil context:nil];
    [UIView    setAnimationCurve: UIViewAnimationCurveLinear];
    [UIView    setAnimationDelegate:self];
    [UIView    setAnimationDuration:3];
    aaaaview.backgroundColor = [UIColor yellowColor];
    aaaaview2.backgroundColor = [UIColor yellowColor];
    [UIView commitAnimations];
     */
    /*
    UIImage *img=[UIImage imageNamed:@"暂未上传数据@2x"];
    CGImageRef imageToDecode=img.CGImage;
    

   // CGImageRef imageToDecode;  // Given a CGImage in which we are looking for barcodes
    
    ZXLuminanceSource *source = [[ZXCGImageLuminanceSource alloc] initWithCGImage:imageToDecode];
    ZXBinaryBitmap *bitmap = [ZXBinaryBitmap binaryBitmapWithBinarizer:[ZXHybridBinarizer binarizerWithSource:source]];
    
    NSError *error = nil;
    
    // There are a number of hints we can give to the reader, including
    // possible formats, allowed lengths, and the string encoding.
    ZXDecodeHints *hints = [ZXDecodeHints hints];
    
    ZXMultiFormatReader *reader = [ZXMultiFormatReader reader];
    ZXResult *result = [reader decode:bitmap
                                hints:hints
                                error:&error];
    if (result) {
        // The coded result as a string. The raw data can be accessed with
        // result.rawBytes and result.length.
        NSString *contents = result.text;
        NSLog(@"%@",contents);
        // The barcode format, such as a QR code or UPC-A
        ZXBarcodeFormat format = result.barcodeFormat;
    } else {
        
        
        NSLog(@"没有识别粗来");
        NSLog(@"没有识别粗来");

        // Use error to determine why we didn't get a result, such as a barcode
        // not being found, an invalid checksum, or a format inconsistency.
    }
    
    
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"点击「完成」，即表示您同意用户协议"];
    NSLog(@"%d",str.length);
    int ssssbbb=str.length;
    
    UILabel *alabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 15+74.5+18+48.5+15+12+18+4+43.5+20, 320, 20)];
    
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0,ssssbbb-4)];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(ssssbbb-4,4)];
    [str addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:12] range:NSMakeRange(0, ssssbbb-4)];
    [str addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:12] range:NSMakeRange(ssssbbb-4,4 )];
    alabel.attributedText=str;
    
    [self.view addSubview:alabel];

    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(157, 0, 50, 20);
    [btn setBackgroundColor:[[UIColor redColor] colorWithAlphaComponent:.5]];
    [alabel addSubview:btn];
    
    NSDate *date=[self getNowDateFromatAnDate:[NSDate date]];
    NSCalendar*calendar = [NSCalendar currentCalendar];
    NSDateComponents*comps;
    comps =[calendar components:(NSWeekCalendarUnit | NSWeekdayCalendarUnit |NSWeekdayOrdinalCalendarUnit)   fromDate:date];
    NSInteger week = [comps week]; // 今年的第几周
    NSInteger weekday = [comps weekday]; // 星期几（注意，周日是“1”，周一是“2”。。。。）
    NSInteger weekdayOrdinal = [comps weekdayOrdinal]; // 这个月的第几周
    NSLog(@"week:%d weekday: %d weekday ordinal: %d", week, weekday, weekdayOrdinal);
     */

    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"]; [filter setDefaults]; NSData *data = [@"hello worold!" dataUsingEncoding:NSUTF8StringEncoding]; [filter setValue:data forKey:@"inputMessage"]; CIImage *outputImage = [filter outputImage]; CIContext *context = [CIContext contextWithOptions:nil]; CGImageRef cgImage = [context createCGImage:outputImage fromRect:[outputImage extent]]; UIImage *image = [UIImage imageWithCGImage:cgImage scale:1. orientation:UIImageOrientationUp]; NSLog(@"image QRCode : %@",NSStringFromCGSize(image.size));
    UIImage *resized = [self resizeImage:image withQuality:kCGInterpolationNone rate:10.0]; NSLog(@"%@",NSStringFromCGSize(resized.size)); UIImageView *theImageView =[[UIImageView alloc]initWithImage:resized]; theImageView.frame = CGRectMake(0, 20, 300, 300); [self.view addSubview:theImageView]; CGImageRelease(cgImage);
    
    [self performSelector:@selector(aaa) withObject:nil afterDelay:0];

}
-(void)aaa{
    UILocalNotification *alarm = [[UILocalNotification alloc] init];
    
    
    {
        
        NSDate *now = [NSDate dateWithTimeIntervalSinceNow:1];
        
        alarm.fireDate = now;
        
        alarm.timeZone = [NSTimeZone defaultTimeZone];
        
        alarm.repeatInterval = NSCalendarUnitDay;
        
        alarm.soundName = @"LocalAlarm.caf";
        
        alarm.applicationIconBadgeNumber =1;
        
        alarm.alertAction = @"电池管家";
        
        alarm.alertBody = @"事件闹铃";
        
        NSDictionary *infoDic = [NSDictionary dictionaryWithObject:@"alarmLocalNotificationName"forKey:@"alarmLocalNotificationKey"];
        
        alarm.userInfo = infoDic;
        
        [[UIApplication sharedApplication] scheduleLocalNotification:alarm];

}
}
/*
// Resize without interpolating UIImage *resized = [self resizeImage:image withQuality:kCGInterpolationNone rate:5.0]; NSLog(@"%@",NSStringFromCGSize(resized.size)); UIImageView *theImageView =[[UIImageView alloc]initWithImage:resized]; theImageView.frame = CGRectMake(100, 200, 100, 100); [self.view addSubview:theImageView]; CGImageRelease(cgImage);
　　由于生成的二维码和图片非常小，所以使用方法放大了5倍
//Resize image
//转成当前时区
*/

 - (UIImage *)resizeImage:(UIImage *)image withQuality:(CGInterpolationQuality)quality rate:(CGFloat)rate { UIImage *resized = nil; CGFloat width = image.size.width * rate; CGFloat height = image.size.height * rate; UIGraphicsBeginImageContext(CGSizeMake(width, height)); CGContextRef context = UIGraphicsGetCurrentContext(); CGContextSetInterpolationQuality(context, quality); [image drawInRect:CGRectMake(0, 0, width, height)]; resized = UIGraphicsGetImageFromCurrentImageContext(); UIGraphicsEndImageContext();
     return resized;
 }
- (NSDate *)getNowDateFromatAnDate:(NSDate *)anyDate
{
    //设置源日期时区
    NSTimeZone* sourceTimeZone = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];//或GMT
    //设置转换后的目标日期时区
    NSTimeZone* destinationTimeZone = [NSTimeZone localTimeZone];
    //得到源日期与世界标准时间的偏移量
    NSInteger sourceGMTOffset = [sourceTimeZone secondsFromGMTForDate:anyDate];
    //目标日期与本地时区的偏移量
    NSInteger destinationGMTOffset = [destinationTimeZone secondsFromGMTForDate:anyDate];
    //得到时间偏移量的差值
    NSTimeInterval interval = destinationGMTOffset - sourceGMTOffset;
    //转为现在时间
    NSDate* destinationDateNow = [[NSDate alloc] initWithTimeInterval:interval sinceDate:anyDate] ;
    return destinationDateNow;
}
-(float)getmax:(float)ymax{
    float temp = 1.0f;
    while (ymax < 1) {
        temp *= 10;
        ymax *= 10;
    }
    ymax = (((int)(ymax / 5)) + 1) * 5;
    ymax /= temp;
    
    return ymax/5.0;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)rtLabel:(id)rtLabel didSelectLinkWithURL:(NSURL*)url
{
    NSLog(@"did select url %@", url);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
