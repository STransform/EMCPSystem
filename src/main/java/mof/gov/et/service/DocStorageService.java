package mof.gov.et.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import mof.gov.et.model.Document;
import mof.gov.et.repository.DocumentRepository;

@Service
public class DocStorageService {
 
	@Autowired
	DocumentRepository documentRepository;
	
	public Document saveFile(MultipartFile file) {
		String docname=file.getOriginalFilename();
		
		String reportname=file.getName();
		
		try {
			Document document=new Document(docname,reportname,file.getContentType(),file.getBytes());
			document.setReportname(reportname);
			return documentRepository.save(document);
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return null;
	}
	
	public Optional<Document> getFile(Integer id) {
       return documentRepository.findById(id);
	}
	public List<Document> getFiles(){
		return documentRepository.findAll();
	}
}
