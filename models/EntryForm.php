<?php

namespace app\models;

use Yii;
use yii\base\Model;


/**
 * 
 */
class EntryForm extends Model
{
	public $name;
	public $email;
	public $alamat;
	public $notelp;

	public function rules()
	{
		return [
			[['name','email','alamat','notelp'], 'required'],
			['email','email'],
		];
	}
}
?>