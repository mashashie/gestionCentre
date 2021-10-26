<?php 
session_start();
$bdd = new PDO('mysql:host=127.0.0.1;dbname=espace_menbre;charset=utf8','root','');
include_once('fonctions.php');
$adoudou = $bdd->prepare("SELECT * FROM site_users WHERE id = ?");
    $adoudou->execute(array($_SESSION['id']));
    $admin = $adoudou->fetch();
$c = $bdd->query("SELECT * FROM menbre WHERE confirm = 0");
$con = 0;
while($co = $c->fetch()){
  $con+=1;

}

if (isset($_POST['valid'])) {
  if (isset($_POST['mat'],$_POST['pseu'],$_POST['pension']) AND !empty($_POST['mat']) AND !empty($_POST['pseu']) AND !empty($_POST['pension']) AND !empty($_POST['tranche'])) {
    $pseu = htmlspecialchars($_POST['pseu']);
     $mat = htmlspecialchars($_POST['mat']);
     $pension = intval(htmlspecialchars($_POST['pension']));
     $tranche = htmlspecialchars($_POST['tranche']);

    $req = $bdd->prepare("SELECT * FROM menbre WHERE pseudo = ? AND matricule = ? ");
    $req->execute(array($pseu,$mat));
    $exist = $req->rowCount();
        if ($exist == 1) {
              $etu = $req->fetch();
              $solde =  0;
              $verify_total = $bdd->prepare("SELECT * FROM pension WHERE matricule = ?");
              $verify_total->execute(array($mat));

              while($total = $verify_total->fetch()){
              $solde += $total['solde'];
            }
            $sm = $bdd->prepare("SELECT * FROM matiere WHERE matiere = ?");
            $sm->execute(array($etu['specialite']));
            $solde_matiere = $sm->fetch();

            if (($solde == $solde_matiere['scolarite']) OR $solde < $solde_matiere) {              
              $req_st = $bdd->prepare("SELECT ( FROM menbre WHERE pseudo = ?");
              $req_st->execute(array($pseu));
              $st = $req_st->fetch()['solde'];
              if ($st > $solde_matiere['scolarite']) {
                $erreur = "pension deja complete";
                return false;
                die('erreur');
              }
              $ins = $bdd->prepare("INSERT INTO pension(matricule,pseudo,session,filiere,solde,tranche1,complete,temps) VALUES(?,?,?,?,?,?,?,NOW())");
              $ins->execute(array($mat,$pseu,$etu['session'],$etu['specialite'],$pension,$tranche,1));
             header('Location:recu.php?matricule='.$etu['matricule']);
            }
            elseif(($solde > $solde_matiere['scolarite']) OR ($pension > $solde_matiere['scolarite'])){
              $erreur =  "attention pension en surplus";
            }
            else{
              $erreur = "pension deja complete";
            }

        }
       else{
        $erreur = "oups une erreur s'est produite dans le processus il se peut que la filiere ou l'etudiant soit invalide ou inexistante";
      }
      }
      else{
        $erreur = "Tous les champs doivent etre rempli";
      }
    }

 ?>
<?php include_once('head.php'); ?>
<body>

  <!-- container section start -->
  <section id="container" class="">
    <!--header start-->
<?php include_once('aside.php'); ?>
    <!--main content start-->
    <section id="main-content">
            <br><br><br>
            
        <!-- Basic Forms & Horizontal Forms-->

        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
        pension de l'etudiant
                  </header>
              <div class="panel-body">
                <form class="form-horizontal" role="form" method="post" action="">
                  <?php if(isset($erreur)){?>
                  <div class="form-group">
                    <label for="inputPassword1" class="col-lg-2 control-label"></label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control alert-danger" value="<?= $erreur?>" id="inputPassword1">
                    </div>
                  </div>                  
                <?php }?>
                  
                  <div class="form-group">
                    <label for="inputPassword1" class="col-lg-2 control-label">matricule de l'etudiant</label>
                    <div class="col-lg-10">
                      <input name="mat" type="text" class="form-control" id="inputPassword1" placeholder="matricule de l'etudiant">
                    </div>
                  </div>                  

                  
                  <div class="form-group">
                    <label for="inputPassword1" class="col-lg-2 control-label">pseudo de l'etudiant</label>
                    <div class="col-lg-10">
                      <input type="text" name="pseu" class="form-control" id="inputPassword1" placeholder="pseudo de l'etudiant">
                    </div>
                  </div>


                 <div class="form-group">
                    <label for="inputPassword1" class="col-lg-2 control-label">Tranche de paiement</label>
                    <div class="col-lg-10">
                      <select class="form-control" name="tranche">
                        <option></option>
                        <option>TRANCHE 1</option>
                        <option>TRANCHE 2</option>
                      </select>
                    </div>
                  </div>


                  <div class="form-group">
                    <label for="inputEmail1" class="col-lg-2 control-label">Pension</label>
                    <div class="col-lg-10">
                      <input type="number" placeholder="pension" class="form-control" name="pension"></input>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button onclick="return(confirm('voulez-vous vraiment payer la pension de cet etudiant? attention cette action est irreversible'))" type="submit" class="btn btn-danger" name="valid">envoyer</button>
                    </div>
                  </div>
                </form>
              </div>
            </section>
           
    </section>
  </section>
  <!-- container section end -->
  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>

  <!-- jquery ui -->
  <script src="js/jquery-ui-1.9.2.custom.min.js"></script>

  <!--custom checkbox & radio-->
  <script type="text/javascript" src="js/ga.js"></script>
  <!--custom switch-->
  <script src="js/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="js/jquery.tagsinput.js"></script>

  <!-- colorpicker -->

  <!-- bootstrap-wysiwyg -->
  <script src="js/jquery.hotkeys.js"></script>
  <script src="js/bootstrap-wysiwyg.js"></script>
  <script src="js/bootstrap-wysiwyg-custom.js"></script>
  <script src="js/moment.js"></script>
  <script src="js/bootstrap-colorpicker.js"></script>
  <script src="js/daterangepicker.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <!-- ck editor -->
  <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
  <!-- custom form component script for this page-->
  <script src="js/form-component.js"></script>
  <!-- custome script for all page -->
  <script src="js/scripts.js"></script>


</body>

</html>
