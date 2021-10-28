# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


2.3. The Gossip Project
2.3.1 Le pitch

Allez, on va poser les bases de notre fameux Gossip Project pour le transcrire en Rails. Et comme je te l'ai expliqué, la première étape est la modélisation de sa BDD !
Le parcours utilisateur est le suivant : sur ce super réseau social, un utilisateur va s'inscrire, renseigner son prénom et nom, son mail et son age, puis il précisera sa ville avec une recherche par code postal.
Il aura ensuite toutes les fonctionnalités qui feront de cette appli une future licorne de la Bitchin'Tech :

    Les utilisateurs peuvent créer des potins : "askip john est célib hihi"
    Les utilisateurs, en créant des potins, peuvent mettre un ou plusieurs tags sur les potins : #romance
    Les utilisateurs peuvent commenter des potins : "ahiii j'savé pa lol ptdr 💁‍♂️"
    Et puisque ton appli doit respecter les standards de l'industrie, on va faire en sorte qu'il soit possible aussi de commenter des commentaires.
    Les utilisateurs peuvent liker des potins.
    Les utilisateurs peuvent contacter leur commères favoris en MP pour obtenir des exclus mondiales.

L'utilisateur pourra donc rechercher les potins par ville, par utilisateurs, par date (plus récent ou plus ancien), par nombre de likes, par tags, pour trouver les potins les plus croustillants.

Ça fait beaucoup ?? Oui clairement, y a de la fonctionnalité de déglingos là. Pas de panique. On va te guider ! Suis-nous.
2.3.2. Dessine-moi une BDD

Allez, feuille / tableau / ERD en main et hop! => Imagine les models qu'il faut pour cette app, les relations possibles, puis évidemment les attributs de chaque model. Toute l'architecture de la BDD doit tenir sur un dessin que vous allez faire en équipe. C'est un excellent entraînement au projet final 😇

Une fois que c'est fait, on va te guider et tu vas pouvoir comparer ton schéma à notre pas à pas.
2.3.3. Les models
a) LES BASES

Commence par créer une application Rails, puis mets les bonnes versions de Ruby et Rails dans le Gemfile.
b) LES USERS

Crée une classe User, qui aura comme attributs :

    Un first_name, qui est un string
    Un last_name, qui est un string
    Un description, qui est un text
    Un email, qui est un string
    Un age, qui est un integer

Tu vas faire 10 utilisateurs en base avec Faker.
c) LES VILLES

Crée une classe City, qui aura comme attributs :

    Un name, qui est un string
    Un zip_code, qui est un string

Un utilisateur appartient à une seule ville mais une ville peut contenir plusieurs utilisateurs.
Tu vas faire 10 villes en base avec Faker et les lier avec les utilisateurs du seed.
d) LES GOSSIPS

Crée une classe Gossip, qui aura comme attributs :

    Un title, qui est un string
    Un content, qui est un text

Un utilisateur peut écrire plusieurs gossips mais un gossip ne peut être écrit que par un seul utilisateur.
Tu vas faire 20 gossips en base avec Faker et les lier avec leur auteur.
e) LES TAGS

Crée une classe Tag, qui aura comme attributs :

    Un title, qui est un string

Un gossip peut avoir plusieurs tags et un tag peut être présent sur plusieurs gossip (genre #bromance).
Tu vas faire 10 tags en base avec Faker. Chaque gossip aura (au minimum) un tag.
f) LES MESSAGES PRIVÉS

Crée une classe PrivateMessage, qui aura comme attributs :

    Un content, qui est un text

Un PM aura un expéditeur et un (ou plusieurs) destinataires.
Tu vas faire quelques PM en base avec Faker et leur donner un expéditeur et un (ou plusieurs) destinataires.

Bravo si t'es arrivé jusque-là !
=== Les exercices ci-dessous sont optionnels et ne seront pas évalué ===
g) LES COMMENTAIRES

Crée une classe Comment, qui aura comme attributs :

    Un content, qui est un text

Un gossip peut avoir plusieurs commentaires mais un commentaire ne peut correspondre qu'a un gossip précis.
Les utilisateurs peuvent écrire plusieurs commentaires mais un commentaire n'a qu'un seul auteur.
Tu vas faire 20 commentaires en base avec Faker et les lier avec leur auteur et le gossip associé.
h) LES LIKES

Crée une classe like, qui n'aura pas d'attributs.
Un utilisateur peut mettre des likes sur des gossips ou des commentaires.
Tu vas faire 20 likes en base avec Faker en les mettant à des commentaires ou des gossips au hasard.
i) LES COMMENTAIRES (BIS)

Pour les chauds de la BDD, vous pouvez faire du commentaire de commentaires. Indice polymorphism. Bien sûr, ton seed fera des commentaires de commentaires 🤓
3. Rendu attendu

3 applications Rails, chacune dans un lien GitHub. En gros 3 répo GitHub différents.
Les standards habituels sont à respecter (Gemfile, README) mais en plus on veut des jolis seeds.