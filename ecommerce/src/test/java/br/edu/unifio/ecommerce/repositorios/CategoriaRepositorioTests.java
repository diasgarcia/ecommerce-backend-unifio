package br.edu.unifio.ecommerce.repositorios;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Sort;

import br.edu.unifio.ecommerce.entidades.Categoria;

@SpringBootTest 
@TestMethodOrder (MethodOrderer.OrderAnnotation.class)
public class CategoriaRepositorioTests {

    @Autowired 
    private CategoriaRepositorio categoriaRepositorio;

    @Test
    @Order (2)
    public void deveBuscarUmaCategoriaPorId() {
        
        Categoria categoria = categoriaRepositorio.findById(Short.parseShort("2")).orElseThrow();

        assertNotNull(categoria);
        assertEquals("Livros", categoria.getNome());
    }

    @Test
    @Order (1)
    public void deveListarTodasAsCategorias() {

        List<Categoria> categorias = categoriaRepositorio.findAll(Sort.by("nome"));

        assertEquals(5, categorias.size()); 
        assertEquals("Eletrodomesticos", categorias.get(0).getNome());   
        assertEquals("Eletrodomesticos para o Lar", categorias.get(0).getDescricao());  
    }

    @Test 
    @Order (3)
    public void deveExcluirUmaCategoriaPorId() {

        Categoria categoria = Categoria.builder()
            .nome("Categoria Teste")
            .descricao("Descrição Teste")
            .build();
        categoriaRepositorio.save(categoria);

        assertTrue(categoriaRepositorio.existsById(categoria.getId()));
        categoriaRepositorio.deleteById(categoria.getId());  
        assertFalse(categoriaRepositorio.existsById(categoria.getId()));     
    }

    @Test 
    @Order (4)
    public void deveSalvarUmProduto() {

        Categoria categoria = Categoria.builder()
            .nome("Categoria Teste")
            .descricao("Descrição Teste")
            .build();
        categoriaRepositorio.save(categoria);
            
        assertTrue(categoriaRepositorio.existsById(categoria.getId()));    
        assertEquals("Categoria Teste", categoriaRepositorio.findById(categoria.getId()).orElseThrow().getNome());    
    }

    @Test 
    @Order (5)
    public void deveAlterarUmaCategoria() {

        Categoria categoria = Categoria.builder()
            .nome("Categoria Teste")
            .descricao("Descrição Teste")
            .build();
        categoriaRepositorio.save(categoria);
        
        categoria.setNome("Categoria Alterada");
        categoria.setDescricao("Descrição Alterada");
        categoriaRepositorio.save(categoria);


        assertEquals("Categoria Alterada", categoria.getNome());
        assertEquals("Descrição Alterada", categoria.getDescricao());
    }
}
