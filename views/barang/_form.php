<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\Barang */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="barang-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'kode_barang')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama_barang')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'satuan')->textInput(['maxlength' => true]) ?>
    <?php 
    	$dataPost=ArrayHelper::map(\app\models\Jenis::find()->asArray()->all(), 'id', 'nama_jenis');
		echo $form->field($model, 'id_jenis')->dropDownList(
            $dataPost,           
            ['id'=>'nama_jenis']
        );
     ?>

    <?php 
    	$dataPost=ArrayHelper::map(\app\models\Supplier::find()->asArray()->all(), 'id', 'nama_supplier');
		echo $form->field($model, 'id_supplier')->dropDownList(
            $dataPost,           
            ['id'=>'nama_supplier']
        );
     ?>

    <?= $form->field($model, 'harga')->textInput() ?>

    <?= $form->field($model, 'stok')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
