package top.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/* 2020.04.07
 * Less3 ���̺�� BookMark ���̺��� �����ϴ� ��Ʈ�ѷ� 
 * DB ���� �� MyBatis ���� �ʿ�, ���� �� DB UnitTest �ʿ�
 * 
 */


@Controller
public class BookMarkController {

	@RequestMapping("/topTable_less3bookmark.top")
	public ModelAndView main(ModelAndView mv) {

		return mv;
	}

}
