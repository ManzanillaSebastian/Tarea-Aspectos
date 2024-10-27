package singleton;
public aspect AOPSingleton {

    //Definimos un mapa para almacenar las instancias del sistema 
    private HashMap<Class<?>, Object> instancias;
    
    //Interceptamos cualquier constructor que sea llamado
    around(): execution( public Object *.new(..) ){

        public Object garantizarSingleton( ProceedingJoinPoint joinPoint ){
            
            Class<?> claseObjetivo = joinPoint.getTarget().getClass();
            
            //Verificamos si la clase objetivo ya fue instanciada antes
            if ( !instancias.containsKey(claseObjetivo) ){
                //Si no se ha instanciado entonces se instancia y se almacena
                Object instancia = joinPoint.proceed();
                instancias.put( claseObjetivo, instancia );
            }
            
            //Finalmente se retorna la instancia almacenada
            return instancias.get( claseObjetivo );
        }
    }
    
}