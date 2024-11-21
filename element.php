<?php
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

$conn = new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');

// Requête pour trouver l'élément
$query = $conn->prepare("SELECT * FROM personnages_bleach WHERE id = :id");
$query->execute(['id' => $id]);
$element = $query->fetch();

if (!$element) {
    die('Character not found.');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($element['prenom'] . ' ' . $element['nom']); ?> - Bleach</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="logo.jpg" type="image/x-icon">
</head>
<body>
    <?php include 'header.php'; ?>
    <div class="container">
        <h1><?php echo htmlspecialchars($element['prenom'] . ' ' . $element['nom']); ?></h1>
        <p><strong>Category:</strong> <?php echo htmlspecialchars($element['categorie']); ?></p>
        <p><strong>Power:</strong> <?php echo htmlspecialchars($element['pouvoir_nom']); ?></p>
        <p><?php echo htmlspecialchars($element['description']); ?></p>
        
    </div>
    <script src="script.js"></script>
</body>
</html>
