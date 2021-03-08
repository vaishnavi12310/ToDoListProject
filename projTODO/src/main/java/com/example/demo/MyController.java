package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	
	@Autowired
	ProjectRepo prepo;
	
	@Autowired
	TaskRepo trepo;
	
	@RequestMapping("projecthome")
	public String projecthome(Model m)
	{
		List<Project> plist = prepo.findAll();
		m.addAttribute("plist", plist);
		return "projecthome.jsp";
	}
	
	@RequestMapping("projectadd")
	public String Projectadd(Model m)
	{
		Project project=new Project();
		m.addAttribute("project", project);
		return"projectadd.jsp";
	}
	
	@RequestMapping("projectsave")
	public String projectsave(Project project)
	{
		prepo.save(project);
		return "redirect:projecthome";
	}
	
	@RequestMapping("projectdelete{id}")
	public String projectdelete(@PathVariable int id)
	{
		prepo.deleteById(id);
		return "redirect:projecthome";
	}

	
	@RequestMapping("viewtask{id}")
	public String viewtask(@PathVariable int id,Model m)
	{
		System.out.println("hello");
		Project project=prepo.findById(id).get();
		m.addAttribute("project", project);
		return "tasklist.jsp";
	}
	
	
	@RequestMapping("addtask{id}")
	public String addtask(@PathVariable int id,Model m)
	{System.out.println("sdas");
		Project project=prepo.findById(id).get();
		Task tasks=new Task();
		m.addAttribute("project", project);
		 m.addAttribute("tasks", tasks);
		return"addtask.jsp";
	}
	
	@RequestMapping("tasksave{id}")
	public String savetask(@PathVariable int id,Task task)
	{
		System.out.println(task);
		System.out.println(id);
		Project project=prepo.findById(id).get();
		project.tasks.add(task);
		prepo.save(project);
		return "redirect:viewtask"+id;
	}
	
    @RequestMapping("task{tid}close{pid}")
    public String delete(@PathVariable int tid,@PathVariable int pid)
    {
    	System.out.println(tid);
    	System.out.println(pid);
    	Project project=prepo.findById(pid).get();
    	for(Task t:project.tasks)
    	{
    		if(t.id==tid)
    			t.status=true;
    	}
    	prepo.save(project);
    	return"redirect:viewtask"+pid;
    }
    
    @RequestMapping("task{tid}delete{pid}")
    public String deletetask(@PathVariable int tid,@PathVariable int pid)
    {
    	Project project=prepo.findById(pid).get();
    	//Task task=trepo.findById(tid).get();
    	for(Task t:project.tasks)
    	{
    		if(tid==t.id && pid==project.id)
    			trepo.deleteById(tid);
    	}
    	//prepo.deleteById(pid);
    	return "redirect:viewtask"+pid;
    }
	
	
	
	
	
}
