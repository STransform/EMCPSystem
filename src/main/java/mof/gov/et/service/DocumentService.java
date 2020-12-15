package mof.gov.et.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mof.gov.et.model.Document;
import mof.gov.et.repository.DocumentRepository;


@Service
public class DocumentService {
	
	@Autowired
	private DocumentRepository documentRepository;
	
	//Return list of document
		public List<Document> getDocuments(){
			return documentRepository.findAll();
		}

		public void save(Document document) {
			// TODO Auto-generated method stub
		    documentRepository.save(document);
		}
}
