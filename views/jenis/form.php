<?php 
use yii\helpers\Html;
use yii\widgets\ActiveForm;
 ?>

 <div class="prodi-form">
 	<div class="col-md-6">
 		<?php $form = ActiveForm::begin(); ?>
 		<?= $form->field($model,'nama_jenis')->textInput()?>
 		<?= $form->field($model,'keterangan')->textInput()?>
 		<div class="form-group">
 			<?= Html::submitButton('Save',['class'=>'btn btn-primary']) ?>
 		</div>
 		<?php ActiveForm::end(); ?>
 	</div>
 </div>