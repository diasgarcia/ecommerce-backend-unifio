package br.edu.unifio.ecommerce.repositorios;

import static org.junit.jupiter.api.Assertions.*;

import java.math.BigDecimal;
import java.util.List;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Sort;

import br.edu.unifio.ecommerce.entidades.Produto;

@SpringBootTest
@TestMethodOrder (MethodOrderer.OrderAnnotation.class)  
public class ProdutoRepositorioTests {

    @Autowired
    private ProdutoRepositorio produtoRepositorio;

    @Autowired
    private CategoriaRepositorio categoriaRepositorio;

    @Test
    @Order (2)
    public void deveBuscarUmProdutoPorId() {

        Produto produto = produtoRepositorio.findById(2).orElseThrow();

        assertNotNull(produto);
        assertEquals("Codigo Limpo", produto.getNome());
    }

    @Test 
    @Order (1)
    public void deveListarTodosOsProdutos() {

        List<Produto> produtos = produtoRepositorio.findAll(Sort.by("nome"));

        assertEquals(5, produtos.size());
        assertEquals("Codigo Limpo", produtos.get(0).getNome());
        assertEquals("Geladeira Frost Free 375L Inox", produtos.get(1).getNome());
    }

    @Test
    @Order (3)
    public void deveExcluirUmProdutPorId() {
        
        Produto produto = new Produto();
        produto.setNome("Nome Teste");
        produto.setDescricao("Descricao Teste");
        produto.setEstoque(Short.parseShort("1"));
        produto.setPreco(new BigDecimal("1.00"));
        produto.setCategoria(categoriaRepositorio.findById(Short.parseShort("1")).orElseThrow());
        produtoRepositorio.save(produto);

        assertTrue(produtoRepositorio.existsById(produto.getId()));
        produtoRepositorio.deleteById(produto.getId());
        assertFalse(produtoRepositorio.existsById(produto.getId()));
    }

    @Test
    @Order (4)
    public void deveSalvarUmProduto() {

        Produto produto = new Produto();
        produto.setNome("Nome Teste");
        produto.setDescricao("Descricao Teste");
        produto.setEstoque(Short.parseShort("1"));
        produto.setPreco(new BigDecimal("1.00"));
        produto.setCategoria(categoriaRepositorio.findById(Short.parseShort("1")).orElseThrow());
        produtoRepositorio.save(produto);

        assertTrue(produtoRepositorio.existsById(produto.getId()));
        assertEquals("Nome Teste", produtoRepositorio.findById(produto.getId()).orElseThrow().getNome());
    }
}
