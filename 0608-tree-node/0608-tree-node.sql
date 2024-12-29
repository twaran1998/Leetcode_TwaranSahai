SELECT Id,
CASE
WHEN p_id IS NULL THEN "Root"
WHEN (p_id IS NOT NULL AND id IN (SELECT p_id FROM Tree)) THEN "Inner"
ELSE "Leaf"
END AS Type
FROM tree;