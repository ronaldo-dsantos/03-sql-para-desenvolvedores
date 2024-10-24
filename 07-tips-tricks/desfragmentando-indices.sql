-- desfragmentando-indices
-- a medida que as informações de uma tabela vão sendo adicionadas, alteradas ou excluídas os índices vão bagunçando e perdendo performance, com os comandos abaixo podemos reorganizá-los ou recriá-los para otimizar a performance
-- recomenda-se que estas manutenções sejam realizadas em períodos que a nossa aplicação tem menos uso, normalmente durante a madrugada

-- query para listar os index e as fragmentações deles (avg_fragmentatios com resultado de 15% a 30% recomenda-se a reorganização do índice, acima de 30% recomenda-se a reconstrução do indice)
SELECT OBJECT_NAME(ips.object_id) AS object_name,
       i.name AS index_name, 
       ips.avg_fragmentation_in_percent, 
       ips.page_count
FROM sys.dm_db_index_physical_stats(DB_ID(), default, default, default, 'SAMPLED') AS ips
INNER JOIN sys.indexes AS i 
ON ips.object_id = i.object_id
   AND ips.index_id = i.index_id
   AND i.name IS NOT NULL
ORDER BY page_count DESC;

-- reorganizando um index específico de uma tabela
ALTER INDEX idx_tabela_teste_descricao ON Tabela_Teste REORGANIZE

-- reorganizando todos os index de uma tabela
ALTER INDEX ALL ON Tabela_Teste REORGANIZE

-- reconstruindo um index específico de uma tabela
ALTER INDEX idx_tabela_teste_descricao ON Tabela_Teste REBUILD

-- reconstruindo todos os index de uma tabela
ALTER INDEX ALL ON Tabela_Teste REBUILD
