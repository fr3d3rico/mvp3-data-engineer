--Investigar como a radiação solar influencia outras variáveis, como temperatura e umidade.
SELECT
  p.RADIACAO,
  AVG(t.TEMPERATURA_AR) AS MEDIA_TEMPERATURA,
  AVG(u.UMIDADE_RELATIVA_AR_HORARIA) AS MEDIA_UMIDADE
FROM
  `mvp-data-engineer-v1.mvp3_dataset.PRECIPITACAO` p
JOIN
  `mvp-data-engineer-v1.mvp3_dataset.TEMPERATURA` t
ON p.DATA_HORA = t.DATA_HORA
JOIN
  `mvp-data-engineer-v1.mvp3_dataset.UMIDADE` u
ON p.DATA_HORA = u.DATA_HORA
GROUP BY
  p.RADIACAO
ORDER BY
  p.RADIACAO;