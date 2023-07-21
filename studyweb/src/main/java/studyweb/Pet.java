package studyweb;

public abstract class Pet {
	String name;
	
	public Pet(String name) {
		this.name=name;
		
	}

	void eat() {
		System.out.println(name+"이(가) 밥먹는다 ㅋㅋ");
	}
	public abstract void bark();
}
