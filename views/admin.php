<div class="container">
	<h1 class="display-4">Page d'administration</h1>
	<p class="lead" style="font-size:20px; color:#198754">Modifiez votre site à votre façon en ajoutant des éléments.</p>
</div>
   <br>
    <br>
    <br>
    <br>
<div class="container">
    <div class="mb-3">
        <label for="formFile" class="form-label">Choisir une image</label>
        <input class="form-control" type="file" id="formFile">
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Nom du lieu :</label>
        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Exemple : Versaille">
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Horaire d'ouverture :</label>
        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Exemple : Versaille">
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Adresse :</label>
        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Exemple : Versaille">
    </div>
    <div class="mb-3">
        <label for="exampleFormControlTextarea1" class="form-label">Entrez une description du lieu :</label>
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
</div>
<br>
<br>
<br>
<br>
    <div class="row" id="sectionPortfolio">
<?php

$square = new GetDataGreenSpace();


$result = $square->GetFromDbAllGreenSpace();



$listSquare = $result->fetchAll(PDO::FETCH_CLASS);
$nb=1;

foreach ($listSquare as $aSquare):
    $href = "#portfolioModal" . $nb;
    $id = "portfolioModal" . $nb;
    $nb = $nb+1;
    
?>
    
    <div class="col-lg-4 listItem">
        <div class="portfolio-item">
            <a class="portfolio-link" data-bs-toggle="modal" href="<?= $href ?>"> 
                <div class="portfolio-hover">
                    <div class="portfolio-hover-content"><?= $aSquare->nom_parc?></i></div>
                </div>
                <img class="img-fluid" src="public/img/espace_vert/<?=$aSquare->parc_photo ?>" alt="..." />
            </a>
            
        </div>
    </div>



    <!-- portfolio item modal -->
    <div class="portfolio-modal modal fade" id="<?=$id?>" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-bs-dismiss="modal"><img src="public/img/close-icon.svg" alt="Close modal" /></div>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8">
                            <div class="modal-body">
                                <!-- Project details-->
                                <h2 class="text-uppercase"><?= $aSquare->nom_parc?></h2> 
                                <br>
                                <img class="img-fluid d-block mx-auto" src="public/img/espace_vert/<?=$aSquare->parc_photo ?>" alt="..." />
                                <p><?= $aSquare->description_parc?></p>
                                <ul class="list-inline">
                                    <li>
                                        
                                        <strong>Horaires d'ouverture:</strong>
                                        <?= $aSquare->parc_planning ?>
                                    </li>
                                    <br>
                                    <li>
                                        <strong>Adresse:</strong>
                                        <?= $aSquare->adresse_parc ?>
                                    </li>
                                </ul>
                                
                                <?= $aSquare->parc_map ?>

                                <br>

                                <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                    <i class="fas fa-times me-1"></i>
                                    Close
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    

<?php
endforeach;


?>
</div>
<br>
<br>
<br>
