<?php include'../config/base.php'; ?>
<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <style type='text/css'>
            body, html {
                margin: 0;
                padding: 0;
            }
            body {
                color: black;
                display: table;
                /* font-family: Georgia, serif;
                font-size: 24px; */
                text-align: center;
            }
            .container {
                border: 20px solid tan;
                width: 100%;
                height: 600px;
                display: table-cell;
                vertical-align: middle;
            }
            .logo {
                color: tan;
            }

            .marquee {
                color: tan;
                font-size: 48px;
                margin: 20px;
            }
            .assignment {
                margin: 20px;
            }
            .person {
                border-bottom: 2px solid black;
                font-size: 32px;
                font-style: italic;
                margin: 20px auto;
                width: 400px;
            }
            .reason {
                margin: 20px;
            }
            .profil{
                margin-left: 750px;
                margin-top: -150px;
            }
        </style>
    </head>
    <body onload="window.print();">
         <?php 
         $id_per = $_GET['id_per'];
         $card = $db->prepare("SELECT * FROM personne INNER JOIN ville ON personne.ref_ville=ville.id_v INNER JOIN quartier ON personne.ref_quartier=quartier.id_q INNER JOIN commune ON personne.ref_commune=commune.id_com INNER JOIN avenue ON personne.ref_avenue=avenue.id_av WHERE id_per=:id_per");
         $card->execute([
             'id_per' => $id_per
         ]);
         $carte = $card->fetch(PDO::FETCH_OBJ);
     
         
         
         ?>

        <div class="container">
        <div style="margin-top:-20px;">
                AUTORISATION SPECIALE DE CIRCULATION

            </div>
            <div class="logo">
                <img width="100px;" src="assets/img/logo.png" alt="">
                
                <img style="width:100px;margin-left:500px;" src="assets/img/arm.png" alt="">
            </div>
            <div>
                <h4>Prenom,post nom et nom : <?=($carte->nom_pers); ?></h4>
                <h4>Lieu et date de naissance : <?=($carte->lieu_naiss); ?>, <?=($carte->date_naiss); ?></h4>
                <h4>Nationalite : <?=($carte->nationalite); ?></h4>
                <h4>Proffession : Etudiant</h4>
                <h4>Delivrer le <?=($carte->created_pers); ?>     Expirer le  2024-08-18 14:06:02 </h4>
            </div>
            <div class="row">
                <div class="col-md-4">

                </div>
                <div class="col-md-4">
                <div class="person">
                Le Directeur de la direction Generale de Migration ou son Deleguer
                 </div>

                </div>
                <div class="col-md-4">
                <img class="profil" width="80px;" src="../prof/<?= ($carte->photo); ?>" alt="">

                </div>

            </div>

            
          
            


        </div>
    </body>
</html>