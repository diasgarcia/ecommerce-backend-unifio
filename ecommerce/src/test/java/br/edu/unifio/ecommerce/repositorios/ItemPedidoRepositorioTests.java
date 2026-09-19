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

import br.edu.unifio.ecommerce.entidades.ItemPedido;

@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class ItemPedidoRepositorioTests {

    @Autowired
    ItemPedidoRepositorio itemPedidoRepositorio;

    @Autowired
    PedidoRepositorio pedidoRepositorio;

    @Autowired
    ProdutoRepositorio produtoRepositorio;

    @Test 
    @Order (2)
    public void deveBuscarUmItemPedidoPorId() {

        ItemPedido itemPedido = itemPedidoRepositorio.findById(2).orElseThrow();
        
        assertNotNull(itemPedido);
        assertEquals(new BigDecimal("3299.00") , itemPedido.getValorUnitario());
    }

    @Test 
    @Order (1)
    public void deveListarTodosOsItemPedidos() {

        List<ItemPedido> itemPedidos = itemPedidoRepositorio.findAll(Sort.by("quantidade"));

        assertEquals(5, itemPedidos.size());
        assertEquals(1, itemPedidos.get(0).getQuantidade());
        assertEquals(new BigDecimal("100.00"), itemPedidos.get(0).getValorUnitario());
        assertEquals(1, itemPedidos.get(0).getPedido().getId());
        assertEquals(2, itemPedidos.get(0).getProduto().getId());
    }

    @Test
    @Order(3)
    public void deveExcluirUmItemPedidoPorId() {

        ItemPedido itemPedido = ItemPedido.builder()
            .quantidade(9)
            .valorUnitario(new BigDecimal("99.99"))
            .pedido(pedidoRepositorio.findById(1).orElseThrow())
            .produto(produtoRepositorio.findById(1).orElseThrow())
            .build();
        itemPedidoRepositorio.save(itemPedido);

        assertTrue(itemPedidoRepositorio.existsById(itemPedido.getId()));
        itemPedidoRepositorio.deleteById(itemPedido.getId());
        assertFalse(itemPedidoRepositorio.existsById(itemPedido.getId()));
    }

    @Test
    @Order(4)
    public void deveSalvarUmItemPedido() {

        ItemPedido itemPedido = ItemPedido.builder()
            .quantidade(9)
            .valorUnitario(new BigDecimal("99.99"))
            .pedido(pedidoRepositorio.findById(1).orElseThrow())
            .produto(produtoRepositorio.findById(1).orElseThrow())
            .build();
        itemPedidoRepositorio.save(itemPedido);

        assertTrue(itemPedidoRepositorio.existsById(itemPedido.getId()));
        assertEquals(9, itemPedidoRepositorio.findById(itemPedido.getId()).orElseThrow().getQuantidade());
    }

    @Test
    @Order(5)
    public void deveAlterarUmItemPedido() {

        ItemPedido itemPedido = ItemPedido.builder()
            .quantidade(9)
            .valorUnitario(new BigDecimal("99.99"))
            .pedido(pedidoRepositorio.findById(1).orElseThrow())
            .produto(produtoRepositorio.findById(1).orElseThrow())
            .build();
        itemPedidoRepositorio.save(itemPedido);

        itemPedido.setQuantidade(10);
        itemPedido.setValorUnitario(new BigDecimal("50.00"));
        itemPedidoRepositorio.save(itemPedido);

        ItemPedido alterado = itemPedidoRepositorio.findById(itemPedido.getId()).orElseThrow();

        assertEquals(10, alterado.getQuantidade());
        assertEquals(new BigDecimal("50.00"), alterado.getValorUnitario());
    }
}
