package application.model;

import java.util.Set;
import java.util.HashSet;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.GenerationType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.OneToMany;

@Entity
@Table(name = "categorias")

public class Categoria{
    @Id
    @GeneratedValue(strategy = GenerationType.INDENTITY)

    private long id;
    @Column (unique = true, nullable = false)

    private String nome;

}