package polycomputer.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@SuppressWarnings("serial")
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity @Table(name = "LuuTru")
public class LuuTru implements Serializable{
	@Id	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer luuTruId;
	String luuTruName;
	String luuTruSlug;
	String description;	
	@Temporal(TemporalType.DATE)
	@Column(name = "created_At")
	Date createdAt = new Date();	
	@Temporal(TemporalType.DATE)
	@Column(name = "updated_At")
	Date updatedAt = new Date();	
	@JsonIgnore
	@OneToMany(mappedBy = "luuTruId")
	List<Product> products;
}
