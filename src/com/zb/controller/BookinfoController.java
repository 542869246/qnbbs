package com.zb.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zb.entity.Bookinfo;
import com.zb.service.BookinfoService;

@Controller(value = "bookinfoController")
@RequestMapping(value = "/pro/")
public class BookinfoController {
	@Resource(name = "bookinfoService")
	BookinfoService bookinfoService;

	@RequestMapping(value = "list")
	public String finaAll(Model model) {
		List<Bookinfo> list = bookinfoService.selectAll();
		model.addAttribute("list", list);
		return "list";
	}

	@RequestMapping(value = "findSome", method = RequestMethod.POST)
	public String finaSome(Model model, Bookinfo bookinfo) {
		model.addAttribute("list", bookinfoService.findSome(bookinfo));
		model.addAttribute("pp", bookinfo);
		return "list";
	}

	@RequestMapping(value = "goAdd")
	public String goAdd(Model model) {
		return "add";
	}

	@RequestMapping(value = "goUpdate/{id}")
	public String goUpdate(Model model, @PathVariable("id") Integer id) {
		model.addAttribute("book", bookinfoService.selectByPrimaryKey(id));
		return "update";
	}

	@RequestMapping(value = "del/{id}")
	public String del(Model model, @PathVariable(value = "id") Integer id) {
		if (bookinfoService.deleteByPrimaryKey(id) > 0) {
			model.addAttribute("msg", "删除成功");
		} else {
			model.addAttribute("msg", "删除失败");
		}
		return "redirect:/pro/list";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(Model model, Bookinfo bookinfo) {
		int rst = bookinfoService.updateByPrimaryKeySelective(bookinfo);
		if (rst > 0) {
			model.addAttribute("msg", "修改成功");
		} else {
			model.addAttribute("msg", "修改失败");
		}
		return "redirect:/pro/list";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(Model model, Bookinfo bookinfo) {
		System.out.println(bookinfo);
		if (bookinfoService.insert(bookinfo) > 0) {
			model.addAttribute("msg", "添加成功");
		} else {
			model.addAttribute("msg", "添加失败");
		}
		return "redirect:/pro/list";
	}
}
