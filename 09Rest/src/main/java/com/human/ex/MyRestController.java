package com.human.ex;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.human.dto.SampleVO;


@RestController
@RequestMapping("/sample")
public class MyRestController {
	
	//데이터 맵핑 
	@RequestMapping("/hello")
	  public String sayHello() {
	    return "Hello World ";
	  }
	
	//json
	  @RequestMapping("/sendVO")
	  public SampleVO sendVO() {

	    SampleVO vo = new SampleVO();
	    vo.setFirstName("길동");
	    vo.setLastName("홍");
	    vo.setMno(123);

	    return vo;
	  }
	  
	  //List형태의 VO Ajax 자바 스크립트의 동기식 처리. 배열 안에 객체를 담고 있다. 
	  @RequestMapping("/sendList")
	  public List<SampleVO> sendList() {

	    List<SampleVO> list = new ArrayList<>();
	    for (int i = 0; i < 10; i++) {
	      SampleVO vo = new SampleVO();
	      vo.setFirstName("길동");
	      vo.setLastName("홍");
	      vo.setMno(i);
	      list.add(vo);
	    }
	    return list;
	  }
	  
	  //List와 다르게 key,value로 되어있다. key를 요청하면 value를 가져옴.  
	  @RequestMapping("/sendMap")
	  public Map<Integer, SampleVO> sendMap() {

	    Map<Integer, SampleVO> map = new HashMap<>();

	    for (int i = 0; i < 10; i++) {
	      SampleVO vo = new SampleVO();
	      vo.setFirstName("길동");
	      vo.setLastName("홍");
	      vo.setMno(i);
	      map.put(i, vo);
	    }
	    return map;
	  }
	  
	  //error처리. ResponseEntity 내장 클래스 BAD_REQUEST 잘못된 요청 
	  @RequestMapping("/sendErrorAuth")
	  public ResponseEntity<Void> sendListAuth() {

	    return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	  }
	 
	  //데이터를 담아서 error 상태를 전송 
	  @RequestMapping("/sendErrorNot")
	  public ResponseEntity<List<SampleVO>> sendListNot() {

	    List<SampleVO> list = new ArrayList<>();
	    for (int i = 0; i < 10; i++) {
	      SampleVO vo = new SampleVO();
	      vo.setFirstName("길동");
	      vo.setLastName("홍");
	      vo.setMno(i);
	      list.add(vo);
	    }
	    
	    return new ResponseEntity<>(list, HttpStatus.NOT_FOUND);
	  }
}
