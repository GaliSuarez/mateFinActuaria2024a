# Este en nuestro primer scribt de R en clase 
# Creamos un objeto numérico llamado a 
a=8 
# Creamos un vector de numeros
vector=c(14,pi,82) 
# Creamos un vector con una secuencia de números del 1 al 100, y del 5 al 15. 
t=1:100
t=5:15
# Creamos una secuencia de numeros pero ahora se incrementan en 0.02 unidades:
t2=seq(from=1,to=10,by=0.02)
# Creamos un objeto con una sola cadena de texto 
objetoTexto1="UMSNH"
# Creamos un vector con cadenas de texto 
vectorTexto1=c("FCCA","UMSNH","2024")

# Creamos un objeto tipo data.frame con los calculos del número a:
# Primero creamos los objetos que serán insumos para el calculo de VF:
VA=1
i=1
nTotal=10000
t=1:nTotal
tablaNumeros=data.frame(
                        t=t,
                        VF=VA*((1+(i/t))^t)
                        )

# Creamos un objeto tipo lista con la tabla del numero e y algunos otros objetos:
objetoLista1=list(
                  tablaE=tablaNumeros,
                  valorActual=VA,
                  tasaInteres=i,
                  periodosSimulados=nTotal
                  )
# Ahora grafico los valores de la tabla números
plot(x=tablaNumeros$t,y=tablaNumeros$VF,type="l",col="pink")
