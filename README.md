<h1> Pinterest</h1>

<h2>C. Avronsart🤩 & V. Richaud😎</h2>

Nous voulons faire de la concurrence à Pinterest, donc nous crééons un site où les utilisateurs peuvent créer des "pins". Chaque pin contient une URL d'une image sur le net. Les utilisateurs peuvent commenter les pins, mais ne peuvent pas commenter les commentaires.

Pour ce faire nous avons créé le modèle suivant:

X On créé une base pinterest

X On fait une table users et un model User

Dans la table users, on a comme attributs 
- first_name, 
- last_name,
- email

Dans le model User, on a plusieurs :pins et :comments

X On fait une table pins et un model Pin

Dans la table pins, on a comme attributs
- title
- url
- un index sur :user

Dans le model Pin, 
- on a plusieurs comments : has_many :comments
- on a un utilisateur à qui appartient le pin : belongs_to :user 

X On fait une table comments et un model Comment

Dans la table comments, on a comme attributs
- content 
- un index sur :user
- un index sur :pin

Dans le model Comment, 
- on a un utilisateur à qui appartient le commentaire
- on a un pin à qui appartient le commentaire belongs_to :pin
