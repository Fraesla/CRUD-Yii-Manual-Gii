<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Transaksi */

$this->title = 'Update Transaksi: ' . $model->kdtrans;
$this->params['breadcrumbs'][] = ['label' => 'Transaksis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->kdtrans, 'url' => ['view', 'id' => $model->kdtrans]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="transaksi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
