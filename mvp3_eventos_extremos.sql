--Identificar eventos meteorológicos extremos, como picos de precipitação, temperaturas extremas, altas rajadas de vento, etc.
SELECT
  p.DATA_HORA,
  PRECIPITACAO_TOTAL,
  TEMPERATURA_AR,
  VENTO_RAJADA_MAXIMA
FROM
  `mvp-data-engineer-v1.mvp3_dataset.PRECIPITACAO` p
JOIN
  `mvp-data-engineer-v1.mvp3_dataset.TEMPERATURA` t
ON p.DATA_HORA = t.DATA_HORA
JOIN
  `mvp-data-engineer-v1.mvp3_dataset.VENTO` v
ON p.DATA_HORA = v.DATA_HORA
WHERE
  PRECIPITACAO_TOTAL > 50
  OR TEMPERATURA_AR > 35
  OR VENTO_RAJADA_MAXIMA > 20;