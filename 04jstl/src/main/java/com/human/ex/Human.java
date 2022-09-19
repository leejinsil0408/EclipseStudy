package com.human.ex;

public class Human {
	private String name;
	private String age;
	
	public Human() {} //폴더 생성자
	
	public Human(String name, String age) { //생성자 
		super();
		this.name = name;
		this.age = age;
	}
	@Override
	public String toString() {
		return "Human [name=" + name + ", age=" + age + "]";
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
