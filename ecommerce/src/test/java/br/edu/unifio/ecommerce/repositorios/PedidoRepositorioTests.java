package br.edu.unifio.ecommerce.repositorios;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.math.BigDecimal;
import java.util.List;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Sort;

import br.edu.unifio.ecommerce.entidades.Pedido;

@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class PedidoRepositorioTests {

    @Autowired
    PedidoRepositorio pedidoRepositorio;

    @Autowired
    ClienteRepositorio clienteRepositorio;

    @Test
    @Order(1)
    public void deveListarTodosOsPedidos() {

        List<Pedido> pedidos = pedidoRepositorio.findAll(Sort.by("status"));

        assertEquals(5, pedidos.size());
        assertEquals("Aguardando Pagamento", pedidos.get(0).getStatus());
        assertEquals("Pago", pedidos.get(4).getStatus());
    }

    @Test
    @Order(2)
    public void deveBuscarUmPedidoPorId() {

        Pedido pedido = pedidoRepositorio.findById(2).orElseThrow();

        assertNotNull(pedido);
        assertEquals("Pago", pedido.getStatus());
    }

    @Test
    @Order(3)
    public void deveExcluirUmPedidoPorId() {

        Pedido pedido = Pedido.builder()
            .status("Teste")
            .valorTotal(new BigDecimal("10.00"))
            .cliente(clienteRepositorio.findById(1).orElseThrow())
            .build();
        pedidoRepositorio.save(pedido);

        assertTrue(pedidoRepositorio.existsById(pedido.getId()));
        pedidoRepositorio.deleteById(pedido.getId());
        assertFalse(pedidoRepositorio.existsById(pedido.getId()));
    }

    @Test
    @Order(4)
    public void deveSalvarUmPedido() {

        Pedido pedido = Pedido.builder()
            .status("Teste")
            .valorTotal(new BigDecimal("10.00"))
            .cliente(clienteRepositorio.findById(1).orElseThrow())
            .build();
        pedidoRepositorio.save(pedido);

        assertTrue(pedidoRepositorio.existsById(pedido.getId()));
        assertEquals("Teste", pedidoRepositorio.findById(pedido.getId()).orElseThrow().getStatus());
    }

    @Test
    @Order(5)
    public void deveAlterarUmPedido() {

        Pedido pedido = Pedido.builder()
            .status("Teste")
            .valorTotal(new BigDecimal("10.00"))
            .cliente(clienteRepositorio.findById(1).orElseThrow())
            .build();
        pedidoRepositorio.save(pedido);

        pedido.setStatus("Alterado");
        pedido.setValorTotal(new BigDecimal("20.00"));
        pedidoRepositorio.save(pedido);

        Pedido alterado = pedidoRepositorio.findById(pedido.getId()).orElseThrow();

        assertEquals("Alterado", alterado.getStatus());
        assertEquals(new BigDecimal("20.00"), alterado.getValorTotal());
    }
}
