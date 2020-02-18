package br.com.java.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.java.model.Pessoa;
import br.com.java.service.PessoaService;


@Controller
public class PessoaController {

	private static final Logger logger = Logger
			.getLogger(PessoaController.class);

	public PessoaController() {
		System.out.println("PessoaController()");
	}

	@Autowired
	private PessoaService pessoaService;

	@RequestMapping(value = "/")
	public ModelAndView listPessoa(ModelAndView model) throws IOException {
		List<Pessoa> listPessoa = pessoaService.getAllPessoas();
		model.addObject("listPessoa", listPessoa);
		model.setViewName("home");
		return model;
	}

	@RequestMapping(value = "/newEmployee", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		Pessoa pessoa = new Pessoa();
		model.addObject("pessoa", pessoa);
		model.setViewName("EmployeeForm");
		return model;
	}

	@RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute Pessoa pessoa) {
		if (pessoa.getId() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			pessoaService.addPessoa(pessoa);
		} else {
			pessoaService.updatePessoa(pessoa);
		}
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/deleteEmployee", method = RequestMethod.GET)
	public ModelAndView deleteEmployee(HttpServletRequest request) {
		int pessoaId = Integer.parseInt(request.getParameter("id"));
		pessoaService.deletePessoa(pessoaId);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/editEmployee", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		int pessoaId = Integer.parseInt(request.getParameter("id"));
		Pessoa pessoa = pessoaService.getPessoa(pessoaId);
		ModelAndView model = new ModelAndView("EmployeeForm");
		model.addObject("pessoa", pessoa);

		return model;
	}

}