//
//  ViewController.m
//  UploadImageDemo
//
//  Created by lei on 2017/6/20.
//  Copyright © 2017年 lei. All rights reserved.
//

#import "ViewController.h"
#import "UploadImageHandle.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *images;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.images.backgroundColor = [UIColor grayColor];
}
- (IBAction)button:(UIButton *)sender {
    
      /**
       上传图片

       @param ImageArray 图片数组
       @return 最大上传数为5.自己可以修改
       */
      [[UploadImageHandle sharedUploadImageHandle] uploadImageWithMaxSelectNumber:1 Sucess:^(NSArray *ImageArray) {
          NSLog(@"%@",ImageArray);
          self.images.image = ImageArray[0];
          //获得到图片,然后进行上传等操作
          
      } Failure:^(NSString *errorMsg) {
          
      }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
