package com.algaworks.algamoney.api.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.algaworks.algamoney.api.model.Lancamento;
import com.algaworks.algamoney.api.model.Pessoa;
import com.algaworks.algamoney.api.repository.LancamentoRepository;
import com.algaworks.algamoney.api.repository.PessoaRepository;
import com.algaworks.algamoney.api.service.exception.PessoaInexistenteOuInativaException;

@Service
public class LancamentoService {
	
	
	@Autowired
	private PessoaRepository pessoaRepository;
	
	@Autowired 
	private LancamentoRepository lancamentoRepository;
	
	
	public Lancamento salvar(Lancamento lancamento) {
		Pessoa pessoa = pessoaRepository.findById(lancamento.getPessoa().getCodigo()).orElseThrow(() -> new EmptyResultDataAccessException(1));
		if(pessoa.isInativo()) {
			throw new PessoaInexistenteOuInativaException();
		}
		
		return lancamentoRepository.save(lancamento);
	}

	
	public Lancamento atualizar(Long codigo, Lancamento lancamento) {
		
		Lancamento lancamentoSalva = buscarLancamentoPeloCodigo(codigo);		
		BeanUtils.copyProperties(lancamento, lancamentoSalva, "codigo");
		return lancamentoRepository.save(lancamentoSalva);
		
	}
	
	/*
	 * public void atualizarPropriedadeAtivo(Long codigo, Boolean ativo) {
	 * Lancamento lancamentoSalva = buscarLancamentoPeloCodigo(codigo);
	 * lancamentoSalva.setAtivo(ativo); lancamentoRepository.save(lancamentoSalva);
	 * }
	 */
	
	private Lancamento buscarLancamentoPeloCodigo(Long codigo) {
		Lancamento lancamentoSalva = lancamentoRepository.findById(codigo).orElseThrow(() -> new EmptyResultDataAccessException(1) );
		return lancamentoSalva;
	}
	
	
	
	
	
}
