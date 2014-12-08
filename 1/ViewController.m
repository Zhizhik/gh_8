//
//  ViewController.m
//  1
//
//  Created by Zhizhik on 08.12.14.
//  Copyright (c) 2014 c. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UIButton *barbieButton;
@property (weak, nonatomic) IBOutlet UIButton *winxButton;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"1"];
    UICollectionViewFlowLayout *layout = (id)self.collectionView.collectionViewLayout;
    layout.itemSize = self.view.frame.size;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"1" forIndexPath:indexPath];
    return cell;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    self.pageControl.currentPage = self.collectionView.contentOffset.x/self.collectionView.frame.size.width;
}


@end
