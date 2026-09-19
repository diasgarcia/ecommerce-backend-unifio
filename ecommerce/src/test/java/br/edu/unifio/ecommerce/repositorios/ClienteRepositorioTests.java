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

import br.edu.unifio.ecommerce.entidades.Cliente;

@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class ClienteRepositorioTests {

    @Autowired
    ClienteRepositorio clienteRepositorio;

    @Test
    @Order (2)
    public void deveBuscarUmClientePorId() {

        Cliente cliente = clienteRepositorio.findById(2).orElseThrow();

        assertNotNull(cliente);
        assertEquals("Fulano", cliente.getNome());
    }

    @Test 
    @Order (1)
    public void deveListarTodosOsClitente() {

        List<Cliente> clientes = clienteRepositorio.findAll(Sort.by("nome"));

        assertEquals(5, clientes.size());
        assertEquals("Beltrano", clientes.get(1).getNome());
        assertEquals("beltrano@email.com", clientes.get(1).getEmail());
    }

    @Test 
    @Order (3)
    public void deveExcluirUmClientePorId() {

        Cliente cliente = Cliente.builder()
            .nome("Cliente Teste")
            .email("email@teste.com")
            .telefone("0000-0000")
            .build();
        clienteRepositorio.save(cliente);

        assertTrue(clienteRepositorio.existsById(cliente.getId()));
        clienteRepositorio.deleteById(cliente.getId());
        assertFalse(clienteRepositorio.existsById(cliente.getId()));
    }

    @Test 
    @Order (4)
    public void deveSalvarUmProduto() {

        Cliente cliente = Cliente.builder()
            .nome("Cliente Teste")
            .email("email@teste.com")
            .telefone("0000-0000")
            .build();
        clienteRepositorio.save(cliente);

        assertTrue(clienteRepositorio.existsById(cliente.getId()));
        assertEquals("Cliente Teste", clienteRepositorio.findById(cliente.getId()).orElseThrow().getNome());
    }

    @Test 
    @Order (5)
    public void deveAlterarUmCliete() {

        Cliente cliente = Cliente.builder()
            .nome("Cliente Teste")
            .email("email@teste.com")
            .telefone("0000-0000")
            .build();
        clienteRepositorio.save(cliente);

        cliente.setNome("Cliente Alterado");
        cliente.setEmail("alterado@email.com");
        cliente.setTelefone("0000-0001");

        assertEquals("Cliente Alterado", cliente.getNome());
        assertEquals("alterado@email.com", cliente.getEmail());
        assertEquals("0000-0001", cliente.getTelefone());
    }
}
