package br.edu.unifio.ecommerce.entidades;

import java.math.BigDecimal;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@Builder 
@NoArgsConstructor 
@AllArgsConstructor 
public class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    private String nome;
    private String descricao;
    private Short estoque;
    private BigDecimal preco;

    // muitos produtos pertencem a categoria
    @ManyToOne
    private Categoria categoria;
}
