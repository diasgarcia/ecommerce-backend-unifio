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

import br.edu.unifio.ecommerce.entidades.Pagamento;
import br.edu.unifio.ecommerce.entidades.Pedido;

@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class PagamentoRepositorioTests {

    @Autowired
    PagamentoRepositorio pagamentoRepositorio;

    @Autowired
    PedidoRepositorio pedidoRepositorio;

    @Autowired
    ClienteRepositorio clienteRepositorio;

    @Test
    @Order(1)
    public void deveListarTodosOsPagamentos() {

        List<Pagamento> pagamentos = pagamentoRepositorio.findAll(Sort.by("valor"));

        assertEquals(5, pagamentos.size());
        assertEquals(new BigDecimal("100.00"), pagamentos.get(0).getValor());
        assertEquals(new BigDecimal("3386.34"), pagamentos.get(4).getValor());
    }

    @Test
    @Order(2)
    public void deveBuscarUmPagamentoPorId() {

        Pagamento pagamento = pagamentoRepositorio.findById(2).orElseThrow();

        assertNotNull(pagamento);
        assertEquals(new BigDecimal("3386.34"), pagamento.getValor());
    }

    @Test
    @Order(3)
    public void deveExcluirUmPagamentoPorId() {

        Pedido pedido = Pedido.builder()
            .status("Teste")
            .valorTotal(new BigDecimal("10.00"))
            .cliente(clienteRepositorio.findById(1).orElseThrow())
            .build();
        pedidoRepositorio.save(pedido);

        Pagamento pagamento = Pagamento.builder()
            .valor(new BigDecimal("10.00"))
            .status("Pendente")
            .tipo("PIX")
            .pedido(pedido)
            .build();
        pagamentoRepositorio.save(pagamento);

        assertTrue(pagamentoRepositorio.existsById(pagamento.getId()));
        pagamentoRepositorio.deleteById(pagamento.getId());
        assertFalse(pagamentoRepositorio.existsById(pagamento.getId()));

        pedidoRepositorio.deleteById(pedido.getId());
    }

    @Test
    @Order(4)
    public void deveSalvarUmPagamento() {

        Pedido pedido = Pedido.builder()
            .status("Teste")
            .valorTotal(new BigDecimal("10.00"))
            .cliente(clienteRepositorio.findById(1).orElseThrow())
            .build();
        pedidoRepositorio.save(pedido);

        Pagamento pagamento = Pagamento.builder()
            .valor(new BigDecimal("10.00"))
            .status("Pendente")
            .tipo("PIX")
            .pedido(pedido)
            .build();
        pagamentoRepositorio.save(pagamento);

        assertTrue(pagamentoRepositorio.existsById(pagamento.getId()));
        assertEquals(new BigDecimal("10.00"), pagamentoRepositorio.findById(pagamento.getId()).orElseThrow().getValor());

        pagamentoRepositorio.deleteById(pagamento.getId());
        pedidoRepositorio.deleteById(pedido.getId());
    }

    @Test
    @Order(5)
    public void deveAlterarUmPagamento() {

        Pedido pedido = Pedido.builder()
            .status("Teste")
            .valorTotal(new BigDecimal("10.00"))
            .cliente(clienteRepositorio.findById(1).orElseThrow())
            .build();
        pedidoRepositorio.save(pedido);

        Pagamento pagamento = Pagamento.builder()
            .valor(new BigDecimal("10.00"))
            .status("Pendente")
            .tipo("PIX")
            .pedido(pedido)
            .build();
        pagamentoRepositorio.save(pagamento);

        pagamento.setValor(new BigDecimal("20.00"));
        pagamento.setStatus("Aprovado");
        pagamento.setTipo("BOLETO");
        pagamentoRepositorio.save(pagamento);

        Pagamento alterado = pagamentoRepositorio.findById(pagamento.getId()).orElseThrow();

        assertEquals(new BigDecimal("20.00"), alterado.getValor());
        assertEquals("Aprovado", alterado.getStatus());
        assertEquals("BOLETO", alterado.getTipo());

        pagamentoRepositorio.deleteById(pagamento.getId());
        pedidoRepositorio.deleteById(pedido.getId());
    }
}
