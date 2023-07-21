package studyweb;

import java.util.ArrayList;
import java.util.List;

public class Javaexam {
	static String shopName;
	List<Product> plist;
	//생성자
    public Javaexam() {
    	plist = new ArrayList<>();
    	genProduct();
    }
    void genProduct() {
    	Product p = new Product();
    	p.setName("왕왕!!으르르르ㅡ왕!");
    	p.setPrice(200000000);
    	plist.add(p);
    	
    	p = new Product();
    	p.setName("커ㅏㅇ컹컹커엌으!!");
    	p.setPrice(20000);
    	plist.add(p);
    }
    
    void showProductList() {
    	System.out.println("## "+shopName+" ##");
    	System.out.println("상품\t\t\t가격");
    	System.out.println("==========================");
    	for(Product p : plist) {
    		System.out.printf("%s\t\t%d\n", p.getName(),p.getPrice());
    	}
    }
	public static void main(String[] args) {
		Javaexam app = new Javaexam();
		Javaexam.shopName = "찰밥이의 쇼핑몰 헤헤";
		app.showProductList();

	}

}
