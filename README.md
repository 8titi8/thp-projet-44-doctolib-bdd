<h1>The Hacking Project - Semaine 4 - Jeudi</h1>

<h2>Projet : Plateforme de réservation de docteurs</h2>

<p>Edité par 
	<ul>
		<li>🤩 <strong>Gaëlle Gorgori</strong> : 06 62 31 97 81</li>
		<li>😎 <strong>Thomas Fernandez</strong> : 06 58 88 68 09</li>
		<li>🤗 <strong>Mathilde Ray</strong> : 06 25 98 18 85</li>
		</ul></p>

<p>On veut concurrencer Doctolib, donc on se dit : et si je créais un site qui fait la même chose ? C'est ce que nous allons faire ! 👩‍⚕️</p>

<p> Pour ce faire nous avons créé le modèle suivant: 
	<ul>
		<li> <strong>Patient</strong> qui a comme attributs 'first_name', 'last-name'<br/>
			- <em>has_many</em> : Un Patient a plusieurs rdv</li>
			- <em>has_many through</em> : Un Patient a plusieurs médecins au travers de rdv</li>
		<li> <strong>Doctor</strong> qui a comme attributs 'first_name', 'last-name', 'specialty' et 'postal_code'<br/>
			- <em>has_many</em> : Un Doctor a plusieurs rdv</li>
			- <em>has_many through</em> : Un Doctor a plusieurs patients au travers de rdv</li>
		<li> <strong>Appointment</strong> qui a comme attribut 'date'.<br/>
			- <em>has_one</em> : Un Appointment a un patient</li>
			- <em>has_one</em> : Un Appointment a un médecin</li>
		</ul>
	</p>

<p>Ce programme a été fait avec rails et utilise de nombreuses gem dont FAKER pour générer une super BDD ! </p>

<p>Pour <strong>créer la BDD</strong>, faire un ```git clone```, puis un ```bundle install```, puis ```rails db:migrate``` et enfin ```rails db:seed```</p>
<p>Pour une lecture simplifiée, ouvrir le fichier <em>development.sqlite3</em> dans un logiciel graphique.</p>
