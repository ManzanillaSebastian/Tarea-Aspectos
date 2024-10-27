package adapter;
import main.*;

public aspect AdapterAspect{
	
	declare parents: Adapter implements Target;
	
	public void Adaptee.request() {
		this.specificRequest();
    }
	
}