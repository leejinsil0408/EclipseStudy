package com.human.dto;

public class SampleVO {
	
/*
 * 1. pom.xml에 자바 버전 1.8 스프링버전 4.3.5.RELEASE로 변경
 * 2. jackson-databind 의존 객체 추가
 * 3. project > properties > project Facts > 자바 1.8 변경 
 * 4. SampleVO 제작
 * 5. MyRestController 제작
 * 6. 실행 후 sample/hello 
 */
	 private Integer mno;
	  private String firstName;
	  private String lastName;

	  public Integer getMno() {
	    return mno;
	  }

	  public void setMno(Integer mno) {
	    this.mno = mno;
	  }

	  public String getFirstName() {
	    return firstName;
	  }

	  public void setFirstName(String firstName) {
	    this.firstName = firstName;
	  }

	  public String getLastName() {
	    return lastName;
	  }

	  public void setLastName(String lastName) {
	    this.lastName = lastName;
	  }

	  @Override
	  public String toString() {
	    return "SampleVO [mno=" + mno + ", firstName=" + firstName + ", lastName=" + lastName + "]";
	  }


}
