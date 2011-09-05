//
//  AlbumListViewController.h
//  Example
//
//  Created by Aaron Brethorst on 9/4/11.
//  Copyright 2011 Structlab LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumListViewController : UIViewController <Routable>
@property(nonatomic,retain) NSString *apiPath;
@property(nonatomic,retain) IBOutlet UILabel *pathLabel;
- (IBAction)showAlbum:(id)sender;
@end
