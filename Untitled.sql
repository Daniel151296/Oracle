CREATE TABLE CLIENTE (

CLIENTE_ID NUMBER PRIMARY KEY,  
NOME VARCHAR2(100) NOT NULL,    
GENERO_ID NUMBER,               
LOGRADOURO_ID NUMBER,           
BAIRRO_ID NUMBER,               
CIDADE_ID NUMBER,              
ESTADO_ID NUMBER,              
PAIS_ID NUMBER,                 
CPF_CNPJ_ID NUMBER             
);
 
CREATE TABLE CPF_CNPJ (

CPF_CNPJ_ID NUMBER PRIMARY KEY, 
DOCUMENTO VARCHAR2(20) UNIQUE NOT NULL 
);
 
CREATE TABLE GENERO (

GENERO_ID NUMBER PRIMARY KEY,   
DESCRICAO VARCHAR2(20) NOT NULL 
);
 
CREATE TABLE LOGRADOURO (

LOGRADOURO_ID NUMBER PRIMARY KEY,
COMPLEMENTO VARCHAR(100) NOT NULL,
NUMERO NUMBER NOT NULL,
ID_BAIRRO NUMBER NOT NULL       
);
 
CREATE TABLE BAIRRO (

BAIRRO_ID NUMBER PRIMARY KEY,     
NOME VARCHAR2(100) NOT NULL       
);
 
CREATE TABLE CIDADE (

CIDADE_ID NUMBER PRIMARY KEY,     
NOME VARCHAR2(100) NOT NULL       
);
 
CREATE TABLE ESTADO(

ESTADO_ID NUMBER PRIMARY KEY,     
SIGLA VARCHAR2(2) NOT NULL,      
NOME VARCHAR2(100) NOT NULL       
);
  
CREATE TABLE PAIS_(

PAIS_ID NUMBER PRIMARY KEY,      
NOME_PAIS VARCHAR2(100) NOT NULL      
);





-- visualizar tabela de outro usuario
Select *
from pf1788.endereco_cliente;


Select distinct cod_tipo_endereco
from pf1788.endereco_cliente;

SELECT cod_tipo_endereco, count(1)
from pf1788.endereco_cliente
group by cod_tipo_endereco

Select count(1),des_bairro
from pf1788.endereco_cliente
group by des_bairro

Select count(1),des_bairro
from pf1788.endereco_cliente
group by des_bairro
having count(1) > 5

Select count(1),des_bairro
from pf1788.endereco_cliente
group by des_bairro
having count(1) between 1 and 5;

------------------------------------------------------------------


set SERVEROUTPUT on;

DECLARE
    salario NUMBER := 1412;
    --v_nome VARCHAR2(30);
    --v_idade number := 39;
    --v_number1 NUMBER := 10;
    --v_number2 NUMBER := 8;

BEGIN
    dbms_output.put_line('O valor do novo salario minimo é: '|| (salario*1.25));
    --v_nome := 'Daniel';
    --dbms_output.put_line(v_number1 + v_number2);
    --dbms_output.put_line('Nome ' || v_nome || ' Idade ' || v_idade);

END;

set SERVEROUTPUT ON;

DECLARE

    v_valor_compra    NUMBER:= &digiteUmValor;  
    v_parcela         NUMBER;
    
BEGIN

     parcela := ( v_valor * 1.03) / 10;
     dbms_output.put_line('O valor de cada parcela será: R$'||parcela);
     dbms_output.put_line('O valor total do carro: R$'||(v_valor * 1.03));


END;

DECLARE

     valor NUMBER := &digiteUmValor;
     entrada NUMBER := valor * 0.20;
     parcelas NUMBER := &parcelas;
      

BEGIN

     dbms_output.put_line('O valor total do carro: R$' || valor);
     dbms_output.put_line('Valor da entrada: R$' || entrada);
     dbms_output.put_line('Valor de cada parcela em : ' || parcelas||' vezes' ||'R$:' || ((valor - entrada) /10) * 1.10);
     dbms_output.put_line('Valor total do carro é : ' || parcelas||' vezes' ||'R$:' ||((((valor - entrada)) * 1.10) + entrada));
     
     
END;

DECLARE

     genero VARCHAR2(20) := '&DigiteUmValor';

BEGIN

   if upper(genero) = 'M' THEN 

     dbms_output.put_line('O genero informado é Masculino');
     
   ELSIF upper(genero) = 'F' THEN
     dbms_output.put_line('O genero informado é Feminino');
   ELSE
     dbms_output.put_line('Valor digitado inválido');
   END IF;
END;   

--Utilizando estrutura de decião crie um bloco anônimo para decidir
--se um determinado numero é par ou impár.

DECLARE
   numero NUMBER := &digiteUmValor;
   
BEGIN
  IF MOD(numero,2)= 0 THEN
    dbms_output.put_line(' O Valor digitado' || numero ||' é par');
  ELSE  
    dbms_output.put_line(' O Valor digitado' || numero ||' é Impár');
  END IF;
END;  


     
   
     


