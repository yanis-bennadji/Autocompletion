const searchInput = document.getElementById('search');
const suggestionsBox = document.getElementById('suggestions');

// Gestion de la saisie dans le champ de recherche
searchInput.addEventListener('input', () => {
    const query = searchInput.value.trim().toLowerCase();

    if (query.length === 0) {
        suggestionsBox.innerHTML = '';
        return;
    }

    fetch(`fetch_autocomplete.php?query=${encodeURIComponent(query)}`)
        .then(response => response.json())
        .then(data => {
            suggestionsBox.innerHTML = '';

            const { exactMatches, partialMatches } = data;

            // Ajouter les correspondances exactes
            if (exactMatches.length > 0) {
                const exactGroup = document.createElement('div');
                exactGroup.classList.add('suggestion-group');
                exactGroup.innerHTML = `<strong>Exact Matches</strong>`;
                suggestionsBox.appendChild(exactGroup);

                exactMatches.forEach(match => {
                    const suggestion = document.createElement('div');
                    suggestion.textContent = match;
                    suggestion.classList.add('suggestion');
                    suggestion.addEventListener('click', () => {
                        searchInput.value = match; // Insère le texte dans le champ
                        suggestionsBox.innerHTML = ''; // Efface les suggestions
                    });
                    suggestionsBox.appendChild(suggestion);
                });
            }

            // Ajouter les correspondances partielles
            if (partialMatches.length > 0) {
                const partialGroup = document.createElement('div');
                partialGroup.classList.add('suggestion-group');
                partialGroup.innerHTML = `<strong>Partial Matches</strong>`;
                suggestionsBox.appendChild(partialGroup);

                partialMatches.forEach(match => {
                    const suggestion = document.createElement('div');
                    suggestion.textContent = match;
                    suggestion.classList.add('suggestion');
                    suggestion.addEventListener('click', () => {
                        searchInput.value = match; // Insère le texte dans le champ
                        suggestionsBox.innerHTML = ''; // Efface les suggestions
                    });
                    suggestionsBox.appendChild(suggestion);
                });
            }
        });
});

// Gestion du clic en dehors de la barre de recherche pour masquer les suggestions
document.addEventListener('click', (e) => {
    if (!e.target.closest('.search-bar')) {
        suggestionsBox.innerHTML = '';
    }
});
