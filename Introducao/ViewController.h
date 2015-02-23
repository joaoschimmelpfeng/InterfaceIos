//
//  ViewController.h
//  Introducao
//
//  Created by João Vitor dos Santos Schimmelpfeng on 23/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelPer;
@property (weak, nonatomic) IBOutlet UILabel *labelResp;
@property (weak, nonatomic) IBOutlet UIButton *btPer;
@property (weak, nonatomic) IBOutlet UIButton *btResp;
@property (weak, nonatomic) IBOutlet UIImageView *imagem;
@property NSMutableArray *mainLista;
@property int cont;

- (IBAction)btPergunta:(id)sender;
- (IBAction)btResposta:(id)sender;


@end

