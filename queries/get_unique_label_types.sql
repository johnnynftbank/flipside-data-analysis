-- Get unique label types from the last 30 days
SELECT DISTINCT LABEL_TYPE
FROM solana.core.dim_labels
WHERE block_timestamp >= DATEADD('day', -30, CURRENT_TIMESTAMP())
ORDER BY LABEL_TYPE; 