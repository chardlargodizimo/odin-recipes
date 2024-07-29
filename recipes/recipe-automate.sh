#type in bash
#for recipe in *.html; do bash recipe-automate.sh $recipe; done

sed -i 's|<h1>|<div class="recipe">\n\t\t<h1 class="title">|' "$@"
sed -i 's|<img |\t<img class="image" |' "$@"

sed -i 's|<h2>Description</h2>|</div>\n\t<div class="desc">\n\t\t<h2 class="desc-heading">Description</h2>|' "$@"
sed -i 's|<p>|\t<p class="desc-content">|' "$@"

sed -i 's|<h2>Ingredients</h2>|</div>\n\t<div class="ingredients">\n\t\t<h2 class="ingredients-heading">Ingredients</h2>|' "$@"
sed -i 's|<h2>Steps</h2>|<div class="steps">\n\t\t<h2 class="steps-heading">Steps</h2>|' "$@"

sed -i 's|<ul>|\t<ul class="recipe__list">|' "$@"
sed -i 's|</ul>|\t</ul>\n\t</div>|' "$@"
sed -i 's|<ol>|\t<ol class="recipe__list">|' "$@"
sed -i 's|</ol>|\t</ol>\n\t</div>|' "$@"
sed -i 's|<li>|\t<li class="recipe__item">|' "$@"
