package mof.gov.et.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import mof.gov.et.model.Document;
import mof.gov.et.service.DocStorageService;
@Controller
public class DocumentBudgetController {

	  @Autowired
	    DocStorageService docStorageService;
	    
	    
	    @GetMapping("/budget")
	    public String get(Model model) {
	    	List<Document> document=docStorageService.getFiles();
	    	model.addAttribute("document", document);
	    	return "user/budget";
	    }
	    
	    @PostMapping("/uploadBudgetFiles")
	    public String uploadMultipleFiles(@RequestParam("files") MultipartFile[] files) {
	    	for(MultipartFile file:files) {
	    		docStorageService.saveFile(file);
	    	}

	    	
	    	return "redirect:/budget";
	    }
	   
	      @GetMapping("/downloadBudgetFile/{fileId}")
	      public ResponseEntity<ByteArrayResource> downloadFile(@PathVariable Integer id){
	      Document document=docStorageService.getFile(id).get();
	      return ResponseEntity.ok()
	      .contentType(MediaType.parseMediaType(document.getDoctype()))
	      .header(HttpHeaders.CONTENT_DISPOSITION,"attachement;filename=\""+document.getDocname()+"\"")
	      .body(new ByteArrayResource(document.getData()));
	    
	    } 
}