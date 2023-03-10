package com.jmRocha.service;

import java.util.List;

import com.jmRocha.domain.Departamento;
import com.jmRocha.util.PaginacaoUtil;

public interface DepartamentoService {

    void salvar(Departamento departamento);

    void editar(Departamento departamento);

    void excluir(Long id);

    Departamento buscarPorId(Long id);
    
    List<Departamento> buscarTodos();

	boolean departamentoTemCargos(Long id);
	
	PaginacaoUtil<Departamento> buscarPorPagina(int pagina, String direcao);
}
