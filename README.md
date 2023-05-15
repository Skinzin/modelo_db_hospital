# modelo_db_hospital
O hospital necessita de um sistema para sua área clínica que ajude a controlar consultas realizadas. Os médicos podem ser generalistas, especialistas ou residentes e têm seus dados pessoais cadastrados em planilhas digitais. Cada médico pode ter uma ou mais especialidades, que podem ser pediatria, clínica geral, gastroenterologia e dermatologia. Alguns registros antigos ainda estão em formulário de papel, mas será necessário incluir esses dados no novo sistema.

Os pacientes também precisam de cadastro, contendo dados pessoais (nome, data de nascimento, endereço, telefone e e-mail), documentos (CPF e RG) e convênio. Para cada convênio, são registrados nome, CNPJ e tempo de carência.

As consultas também têm sido registradas em planilhas, com data e hora de realização, médico responsável, paciente, valor da consulta ou nome do convênio, com o número da carteira. Também é necessário indicar na consulta qual a especialidade buscada pelo paciente.

Deseja-se ainda informatizar a receita do médico, de maneira que, no encerramento da consulta, ele possa registrar os medicamentos receitados, a quantidade e as instruções de uso. A partir disso, espera-se que o sistema imprima um relatório da receita ao paciente ou permita sua visualização via internet.


<h4 align="center">Diagrama ER (Entidade Relacional).<h4>
<span>Utilizando o esquema de 1:N, N:N e 0:N, construimos o segmento de nosso DER</span>
  
  <span>Etp. 1</span>
  
![diagrama_er](https://github.com/Skinzin/modelo_db_hospital/assets/71513905/decae339-940f-4e2f-ae11-cf3efa899006)
  
  <span>Etp. 2</span>
  
![diagrama_er_etp2](https://github.com/Skinzin/modelo_db_hospital/assets/71513905/4df84734-a5bf-48a7-9a11-bb156a7dc381)

  
  
  <h4 align="center">Seguindo apra nosos Modelo Lógico</h4>

![image](https://github.com/Skinzin/modelo_db_hospital/assets/71513905/0f86b420-9926-4d5c-9daf-6b940f33f062)

<h4 align="center">
  <a href="./">Você pode pegar e rodar em seu Workbench por aqui</a>
</h4>

<h4 align="center">Criando o modelo fisico</h4>
  
![image](https://github.com/Skinzin/modelo_db_hospital/assets/71513905/1d885110-2149-405c-b92b-b05b7163a5e1)

<br>
<h4 align="center">
  <a href="./">Você pode ver o arquivo de criação aqui</a>
</h4>

<br><br>

![image](https://github.com/Skinzin/modelo_db_hospital/assets/71513905/a14069df-ce03-4943-9ca9-4f1b4cfc062e)

<h4 align="center">
  <a href="./">Você pode validar a População e a Query aqui</a>
</h4>

<span>Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio.</span>
<span>Utilizando o WHERE e AVG(valor), capturando a media dele.</span>

<br>
<span>Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta.</span>
<span>Utilizamos WHERE onde a data_prev é menor que a data_alta</span>
<br>

<span>Receituário completo da primeira consulta registrada com receituário associado.</span>
<span>Fazemos a junção das Tabelas Consulta, Receita e Remedio.</span>
<br>

<span>Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio).</span>
<span>Utilizando o Where onde não há convenio e ordenando de forma Crescente e Decrescente</span>
<br>

<span>Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta.</span>
<span>Utilizando o Join entre Internação, Quarto e Tipo_Quarto, permitiu que obter o valor, o tempo que ficou (Utilizando Datedif)</span>
<br>

<span>Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.</span>
<span>Utilizando o Join entre a Internação, Quarto e Tipo_Quarto, nos permitiu obter a data, o procedimento e qual foi o quarto.</span>
<br>
