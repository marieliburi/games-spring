package application.model; 

import java.util.Set; //Essa biblioteca não permite armazenar valores repetidos
import java.util.HashSet; // Garante que os elementos armazenados são únicos e fornece operações eficientes, baseado em uma tabela hash

//Essas bibliotecas são usadas para mapear uma classe Java para uma tabela no banco de dados.
import jakarta.persistence.Column; //Permite criar e configurar as propriedades das colunas no banco de dados
import jakarta.persistence.Entity; //Permite criar uma tabela no banco de dados atravez da classe
import jakarta.persistence.Id; //Permite criar uma chave primária
import jakarta.persistence.Table; //Permite criar uma tabela do banco de dados
import jakarta.persistence.GenerationType; // Define estratégias para geração automática de IDs
import jakarta.persistence.GeneratedValue; //Perminte criar um campo autoincrement
import jakarta.persistence.OneToMany; //Permite gerar os relacionamentos (ex:1 para N)

@Entity //Aqui cria uma tabela no banco de dados
@Table(name = "categorias") //Aqui nomeia a Tabela que foi criada logo acima

public class Categoria{
    @Id //Aqui cria um campo chamado id, no banco de dados - Define que vai ser a chave primária
    @GeneratedValue(strategy = GenerationType.INDENTITY) //Nessa linha esta sendo criado um campo autoincrement e sendo atribuido ao id criado acima

    private long id; // Criando uma variavel do tipo long e private

    @Column (unique = true, nullable = false) // Aqui está sendo criado uma coluna do tipo string e private, sendo limitado a ser um campo que não se repete e não nulo
    private String nome; //Aqui esta nomeando a coluna criada acima

}