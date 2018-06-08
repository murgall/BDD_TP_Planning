<?php
	define('SERVER',"localhost");
	define('BASE', "planning_hebdo");
	define('USER', "root");
	define('PASSWD', "");
?>

<?php
    function ListeEleve(){
            $dsn="mysql:dbname=".BASE.";host=".SERVER;
            try{
            $connexion=new PDO($dsn,USER,PASSWD);
               }
         catch(PDOExeption $e){
         printf("Echec de la connexion: %s\n",$e->getMessage());
         exit();
         }

          $sql="SELECT * from eleve";
          if(!$connexion->query($sql)) echo "Pb d'accès aux clients";
          else{
             echo "
             <table>
  <tr>
    <th>Nom</th>
    <th>Prenom</th>
    <th>Age</th>
  </tr>
  </table>";
             foreach ($connexion->query($sql) as $row)
             {
             echo " <table>

  <tr>
    <td>".$row['NELEVE']."</td>
    <td>".$row['PRENOMELEVE']."</td>
    <td>".$row['NGROUPE']."</td>
  </tr>
</table> ";
             }
         }
    }
?>


<?php
    function tirage(){
            $dsn="mysql:dbname=".BASE.";host=".SERVER;
            try{
            $connexion=new PDO($dsn,USER,PASSWD);
               }
         catch(PDOExeption $e){
         printf("Echec de la connexion: %s\n",$e->getMessage());
         exit();
         }

          $sql="SELECT * from groupe";
          if(!$connexion->query($sql)) echo "Pb d'accès aux clients";
          else{
             echo "Liste des clients: <br>";
             foreach ($connexion->query($sql) as $row)
             {
             echo "<option>".$row['NGROUPE']."</option>\n";
             }
         }
    }
?>


<?php
    function recup_J(){
        $ville_recup= $_GET['Classe'];
            $dsn="mysql:dbname=".BASE.";host=".SERVER;
            try{
            $connexion=new PDO($dsn,USER,PASSWD);
               }
         catch(PDOExeption $e){
         printf("Echec de la connexion: %s\n",$e->getMessage());
         exit();
         }

          $sql="SELECT NELEVE, PRENOMELEVE, NGROUPE from eleve where NGROUPE like '$ville_recup'";
          if(!$connexion->query($sql)) echo "Pb d'accès aux clients";
          else{
             echo "Liste des clients: <br>";
             foreach ($connexion->query($sql) as $row)
             echo " <table>

  <tr>
    <td>".$row['NELEVE']."</td>
    <td>".$row['PRENOMELEVE']."</td>
    <td>".$row['NGROUPE']."</td>
  </tr>
</table> ";
             }
         }
    
?>