package mof.gov.et.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
 
@Entity
@Table(name="document")
public class Document {
 
    @Id 
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer id; 
    private String docname;
    private String doctype;
    @Lob
    private byte[] data;
    private String reportname;
    
    
    public Document() {
    	
    }
	

	public Document(String docname, String doctype,String reportname, byte[] data) {
		super();
		this.docname = docname;
		this.doctype = doctype;
		this.data = data;
		this.reportname=reportname;
		
	}

	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDocname() {
		return docname;
	}

	public void setDocname(String docname) {
		this.docname = docname;
	}

	public String getDoctype() {
		return doctype;
	}

	public void setDoctype(String doctype) {
		this.doctype = doctype;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}


	public String getReportname() {
		return reportname;
	}


	public void setReportname(String reportname) {
		this.reportname = reportname;
	}
 
     
}