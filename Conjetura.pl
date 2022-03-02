
# Programa de demostracion de la conjetura de BEAL, en lenguaje  de programacion "PERL", donde comprobamos que es cierta la conjetura
# Demostracion realizada por el Ingeniero Miguel Alejandro Rodriguez

#!"C:\xampp\perl\scrpits\prueba5.pl"
use strict;

# Declaracion de las variables para los bucles
my $start = time;
my $x;
my $y;
my $z;

my $count=0;
my $count_2=0;
# Inicializamos las variables con exponenciales
 my $resultX;
 my $resultY;
 my $resultZ;
 


# Bucle para todas las combinaciones de Z donde le podemos dar cualquier valor a z>=3 
foreach ($z=3;$z<=10; $z++){
  $count_2++;
  
# Bucle para todas las combinaciones de Y donde le podemos dar cualquier valor a y>=3 

foreach ($y=3;$y<=10; $y++) {
			 
# Bucle para todas las combinaciones de X donde le podemos dar cualquier valor a x>=3
 
 
    foreach ($x=3;$x<=10; $x++){  
       
    # Declaracion  exponecial
  $resultX=(3**(3*$x));
  $resultY=((2*(3**$y)))**(3);
  $resultZ=(3**(3*$z+2));
  
  
 if (($resultX+$resultY)== $resultZ){
   $count++;
                             #Imprime todas las cantidades de resultados posibles  
                             print "$resultZ=$resultY+$resultX\n\n";
                             
                             
                                    }
                              }
                                           
                            }
      
                            }


#Declaracion de variables $end para el conteo del tiempo de ejecucion 
my $end = time;
#Imprime el tiempo en segundos de la ejecucion del programa
printf ("Tiempo de ejecucion en segundos: % .6f\n",$end- $start);
#Imprime la cantidad de resultados 
 print"$count\n";