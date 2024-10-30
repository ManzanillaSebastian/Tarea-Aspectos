import org.aspectj.lang.ProceedingJoinPoint;

public aspect AOPAdapter {

    // Definir que Adapter implementa Target
    declare parents : Adapter implements Target;

    // Creación del pointcut para cualquier método
    pointcut metodoInterceptado() : execution(* *(..));

    // Advice alrededor del pointcut
    Object around() : metodoInterceptado() {
        ProceedingJoinPoint joinPoint = (ProceedingJoinPoint) thisJoinPoint;
        Object[] args = joinPoint.getArgs();

        // Reemplazar instancias de Adaptee por Adapter
        for (int i = 0; i < args.length; i++) {
            if (args[i] instanceof Adaptee) {
                Adaptee adaptee = (Adaptee) args[i];
                Adapter adaptador = new Adapter(adaptee);
                args[i] = adaptador;
            }
        }

        // Continuar la ejecución del método con los argumentos modificados
        return  joinPoint.proceed(args);
    }
}