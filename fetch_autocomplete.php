<?php
$query = isset($_GET['query']) ? strtolower(trim($_GET['query'])) : '';

$conn = new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');

// Requêtes pour les correspondances exactes et partielles
$exactMatches = $conn->prepare("
    SELECT CONCAT(prenom, ' ', nom) AS full_name FROM personnages_bleach
    WHERE LOWER(prenom) LIKE :query OR LOWER(nom) LIKE :query
");
$exactMatches->execute(['query' => "$query%"]);

$partialMatches = $conn->prepare("
    SELECT CONCAT(prenom, ' ', nom) AS full_name FROM personnages_bleach
    WHERE LOWER(prenom) LIKE :query OR LOWER(nom) LIKE :query
");
$partialMatches->execute(['query' => "%$query%"]);

echo json_encode([
    'exactMatches' => $exactMatches->fetchAll(PDO::FETCH_COLUMN),
    'partialMatches' => $partialMatches->fetchAll(PDO::FETCH_COLUMN),
]);
?>
