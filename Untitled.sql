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

