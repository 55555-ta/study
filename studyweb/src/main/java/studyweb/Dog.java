package studyweb;

public class Dog extends Pet {
	public Dog(String name) {
		super(name);		
	}

	@Override
	public void bark() {
		System.out.println(name+":컹컹!!크르르르르으르으으컹!");

	}

}
