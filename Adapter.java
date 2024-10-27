package DiseñoDeSoftware;

public class Adapter implements Target {
    private Adaptee adaptee;

    public Adapter(Adaptee adaptee){
        this.adaptee=adaptee;
    }

    public void request(){
        adaptee.specificRequest();
    }

    public static void main(String[] args){
        Adaptee adaptee=new Adaptee();
        Target adapter=new Adapter(adaptee);
        adapter.request();
    }
}
