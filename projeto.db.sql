--pergunta 1
SELECT  nome, A.id, id_conta, dependente
FROM cliente_conta AA
JOIN cliente A
ON AA.id = A.id
WHERE dependente = TRUE; 
-- pergunta 2
SELECt conta.numero, COUNT( transacao.id_cliente_conta) AS quatitades
from transacao
join cliente_conta
ON transacao.id_cliente_conta=cliente_conta.id
JOIN conta
On cliente_conta.id_conta= conta.id
GROup By conta.numero
ORDER BY quatitades ASC

LIMit 5;
--pergunta 3
SELECT  conta.id AS "numero conta",
		conta.numero AS "numero de conta",
        conta.saldo AS "saldo conta"
        
FROM conta
ORDER BY numero, id;