package top.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/* 2020.04.07
 * Less3 테이블과 BookMark 테이블을 관리하는 컨트롤러 
 * DB 연동 및 MyBatis 설계 필요, 설계 후 DB UnitTest 필요
 * 
 */


@Controller
public class BookMarkController {

	@RequestMapping("/topTable_less3bookmark.top")
	public ModelAndView main(ModelAndView mv) {

		return mv;
	}

}
