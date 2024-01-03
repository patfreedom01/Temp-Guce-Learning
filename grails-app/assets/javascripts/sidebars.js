
// Attendez que le document soit prêt
document.addEventListener('DOMContentLoaded', function () {
  // Récupérez tous les boutons qui ont l'attribut data-bs-toggle="collapse"
  var toggleButtons = document.querySelectorAll('[data-bs-toggle="collapse"]');

  // Ajoutez un gestionnaire d'événement à chaque bouton
  toggleButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      // Récupérez le sélecteur du collapse associé à ce bouton
      var targetSelector = button.getAttribute('data-bs-target');

      // Récupérez l'élément collapse associé
      var targetCollapse = document.querySelector(targetSelector);

      // Basculez l'état d'expansion du collapse
      var isExpanded = targetCollapse.classList.contains('show');
      if (isExpanded) {
        targetCollapse.classList.remove('show');
      } else {
        targetCollapse.classList.add('show');
      }
    });
  });
});