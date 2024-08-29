# Esta función realiza el calculo y gráfica de la aproximación del número e con t como argumento de entrada

  simulaNumeroE=function(nTotal){
    # Creamos un objeto tipo data.frame con los calculos del número a:
    # Primero creamos los objetos que serán insumos para el calculo de VF:
  VA=1
  i=1
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
  
  return(objetoLista1)
  
}