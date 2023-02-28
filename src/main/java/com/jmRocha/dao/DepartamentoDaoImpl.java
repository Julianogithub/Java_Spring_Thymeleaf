package com.jmRocha.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jmRocha.domain.Departamento;
import com.jmRocha.util.PaginacaoUtil;

@Repository
public class DepartamentoDaoImpl extends AbstractDao<Departamento, Long> implements DepartamentoDao {
	
	public PaginacaoUtil<Departamento> buscaPaginada(int pagina, String direcao) {
		int tamanho = 9;
		int inicio = (pagina - 1) * tamanho; // 0*5=0 1*5=5 2*5=10
		List<Departamento> departamentos = getEntityManager()
				.createQuery("select c from Departamento c order by c.nome " + direcao, Departamento.class)
				.setFirstResult(inicio)
				.setMaxResults(tamanho)
				.getResultList();
		
		long totalRegistros = count();
		long totalDePaginas = (totalRegistros + (tamanho - 1)) / tamanho;
		
		return new PaginacaoUtil<>(tamanho, pagina, totalDePaginas, direcao, departamentos);
	}
	
	public long count() {
		return getEntityManager()
				.createQuery("select count(*)from Departamento", Long.class)
				.getSingleResult();
	}

}
