<header>
    <a href="./index.php">
        <img class="bleach-logo" src="./Bleach_(manga)_Logo.svg" alt="" srcset="">
    </a>
    <form action="recherche.php" method="GET" class="search-bar">
        <input 
            type="text" 
            name="search" 
            id="search" 
            placeholder="Inserer un nom de personnage" 
            autocomplete="off"
        >
        <button type="submit">Recherche</button>
        <div class="autocomplete-suggestions" id="suggestions"></div>
    </form>
</header>
