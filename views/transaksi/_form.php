<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Transaksi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="transaksi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'kdtrans')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'kdbrg')->textInput() ?>

    <?= $form->field($model, 'idjenis')->textInput() ?>

    <?= $form->field($model, 'idsup')->textInput() ?>

    <?= $form->field($model, 'tanggal')->textInput() ?>

    <?= $form->field($model, 'total')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
