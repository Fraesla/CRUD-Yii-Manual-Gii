<?php 
use yii\helpers\Html;
 ?>
 <p>Termakasih sudah menginputkan pada form:</p>
 <ul>
 	<li><label>Name</label>: <?= Html::encode($model->name) ?></li>
 	<li><label>Email</label>: <?= Html::encode($model->email) ?></li>
 	<li><label>Alamat</label>: <?= Html::encode($model->alamat) ?></li>
 	<li><label>No. Telpon</label>: <?= Html::encode($model->notelp) ?></li>
 </ul>