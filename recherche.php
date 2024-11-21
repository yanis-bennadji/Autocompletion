<?php
$search = isset($_GET['search']) ? strtolower(trim($_GET['search'])) : '';

$conn = new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');

// Modification de la requête pour inclure la recherche du nom complet
$query = $conn->prepare("
    SELECT * FROM personnages_bleach 
    WHERE 
        LOWER(CONCAT(prenom, ' ', nom)) LIKE :search OR
        LOWER(prenom) LIKE :search OR
        LOWER(nom) LIKE :search
");
$query->execute(['search' => "%$search%"]);
$results = $query->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results - Bleach</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php include 'header.php'; ?>
    <div class="container">
        <h1>Résultat pour "<?php echo htmlspecialchars($search); ?>"</h1>
        <?php if (count($results) > 0): ?>
            <ul>
                <?php foreach ($results as $result): ?>
                    <li>
                        <a href="element.php?id=<?php echo $result['id']; ?>">
                            <?php echo htmlspecialchars($result['prenom'] . ' ' . $result['nom']); ?>
                        </a>
                        <p><?php echo htmlspecialchars($result['categorie']); ?></p>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php else: ?>
            <p>No results found.</p>
        <?php endif; ?>
    </div>
    <script src="script.js"></script>
</body>
</html>