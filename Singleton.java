package DiseñoDeSoftware;

public class Singleton {
    private static Singleton instance;

    //Constructor privado
    private Singleton(){

    }

    public static Singleton getInstance(){
        if(instance==null){
            instance= new Singleton();
        }
        return instance;
    }

    public void showmessage(){
        System.out.println("Hello World");
    }

    public static void main(String[] args){
        Singleton singleton=Singleton.getInstance();
        singleton.showmessage();
    }

}

