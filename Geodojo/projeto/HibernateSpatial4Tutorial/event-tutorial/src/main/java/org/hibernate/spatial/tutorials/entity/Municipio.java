package org.hibernate.spatial.tutorials.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

import com.vividsolutions.jts.geom.MultiPolygon;

@Entity
@Table(name="municipios_br")
public class Municipio {

	@Id
	@GeneratedValue
	@Column(name = "gid")
	private Long id;
	
	@Column(name = "nomeuf")
	private String uf;

	@Column(name = "regiao")
	private String regiao;

	@Column(name = "nomemicro")
	private String nome;
	
	@Column(name = "geom")
	@Type(type="org.hibernate.spatial.GeometryType")
	private MultiPolygon poligono;

	public void setId(Long id) {
		this.id = id;
	}
	
	public Long getId() {
		return id;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}
	
	public String getUf() {
		return uf;
	}
	
	public String getRegiao() {
		return regiao;
	}
	
	public void setRegiao(String regiao) {
		this.regiao = regiao;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return nome;
	}
	
	public MultiPolygon getPoligono() {
		return poligono;
	}

	public void setPoligono(MultiPolygon poligono) {
		this.poligono = poligono;
	}

}
