//
//  ViewController.m
//  PruebaPlist
//
//  Created by user137716 on 20/04/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)botonClick:(id)sender{
    //Paso1: recuperamos el path del fichero
    //NSBundle - ejecución de la app
    //path - nombre fichero
    //ofType - extension (plist)
    NSString *path =[[NSBundle mainBundle]
                     pathForResource:@"PlistLista"
                      ofType:@"plist"];
    //Paso2: cargamos el contenido del fichero en un dictionary
    NSDictionary *pl = [[NSDictionary alloc] initWithContentsOfFile:path];
    //Paso3: Recuperamos el valor
    NSString *idioma = (NSString *) [pl objectForKey:@"Idioma"];
    NSString *servidor = (NSString *) [pl objectForKey:@"Servidor"];
    NSNumber *numsoci = (NSNumber *) [pl objectForKey:@"Numero de socio"];

    //Paso4: Pintamos el dato en el label "pantalla"
    _pantalla.text = idioma;
    _pantalla2.text = servidor;
    _pantalla3.text = [numsoci stringValue];
}

@end
