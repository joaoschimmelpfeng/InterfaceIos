//
//  ViewController.m
//  Introducao
//
//  Created by João Vitor dos Santos Schimmelpfeng on 23/02/15.
//  Copyright (c) 2015 João Vitor dos Santos Schimmelpfeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize  labelPer,labelResp,btPer,btResp,imagem,mainLista,cont;

UIImage *gota;
UIImage *telefone;
UIImage *banco;

- (void)viewDidLoad
{
    [super viewDidLoad];
    mainLista = [[NSMutableArray alloc] init];
    NSString *pergunta1 = [NSString stringWithFormat:@"Oque cai de pé e corre deitado?"];
    NSString *resposta1 = [NSString stringWithFormat:@"A chuva."];
    [mainLista addObject:pergunta1];
    [mainLista addObject:resposta1];
    
    NSString *pergunta2 = [NSString stringWithFormat:@"O que o tomate foi fazer no banco?"];
    NSString *resposta2 = [NSString stringWithFormat:@"Tirar o extrato."];
    [mainLista addObject:pergunta2];
    [mainLista addObject:resposta2];
    
    NSString *pergunta3 = [NSString stringWithFormat:@"O que o cavalo foi fazer no orelhão?"];
    NSString *resposta3 = [NSString stringWithFormat:@"Passar um trote."];
    [mainLista addObject:pergunta3];
    [mainLista addObject:resposta3];
    
    cont = -1;
    
    labelPer.textColor = [UIColor whiteColor];
    labelResp.textColor = [UIColor whiteColor];
    [btPer setBackgroundColor:[UIColor orangeColor]];
    [btResp setBackgroundColor:[UIColor orangeColor]];
    
    labelPer.text = [NSString stringWithFormat:@""];
    gota = [UIImage imageNamed:@"gota.png"];
    telefone = [UIImage imageNamed:@"telefone.jpg"];
    banco = [UIImage imageNamed:@"deposito.jpg"];
    
     [imagem setContentMode:UIViewContentModeScaleAspectFit];
    
    
    [self.view setBackgroundColor:[UIColor blueColor]];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)btPergunta:(id)sender
{
    
    cont = cont +1;
    if(cont >2)
    {
        cont = 0;
    }
    
    switch(cont)
    {
        case 0:
        {
            labelPer.text = [mainLista objectAtIndex:0];
            labelResp.text = [NSString stringWithFormat:@"???"];
            [imagem setImage:gota];
            break;
        }
            
        case 1:
        {
            labelPer.text = [mainLista objectAtIndex:2];
            labelResp.text = [NSString stringWithFormat:@"???"];
            [imagem setImage:telefone];
            break;
        }
            
        case 2:
        {
            labelPer.text = [mainLista objectAtIndex:4];
            labelResp.text = [NSString stringWithFormat:@"???"];
            [imagem setImage:banco];
            break;
        }
    }
    
    
}

- (IBAction)btResposta:(id)sender
{
    switch(cont)
    {
        case 0:
        {
            labelResp.text = [mainLista objectAtIndex:1];
            break;
        }
            
        case 1:
        {
            labelResp.text = [mainLista objectAtIndex:3];
            break;
        }
            
        case 2:
        {
            labelResp.text = [mainLista objectAtIndex:5];
            break;
        }
            
        default:
        {
            labelResp.text = [NSString stringWithFormat:@"???"];
            break;
        }
    }
}
@end
