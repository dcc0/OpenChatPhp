<?php
/*
 * Cycle.php
 *
 * Copyright 2019 name= <Iv.Gavryushin. MSK>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 *
 *
 */
//namespace Cycle;
class Cycle
{
	protected $i = 0;
	protected $value = 0;
	protected $thejson = array();
	protected $mybject;
	protected $mystring;
	protected $j;
	protected $temp;
	protected $fetch_assoc_arr;
	/**
	 * Constructor of class Cycle.
	 *
	 * @return void
	 */
	public function __construct($array_for_cycle, $mybject)
	{
		if (!is_array($array_for_cycle))
		  {
            throw new Exception('Переменная array_for_cycle должна быть массивом!');
          }
          if (is_int($array_for_cycle[0]) && $array_for_cycle[0] < 0)
		  {
            throw new Exception('Нулевой аргумент должен быть числом > 0!');
          }
          if (is_int($array_for_cycle[1]) && $array_for_cycle[1] < 0)
		  {
            throw new Exception('Первый аргумент должен быть числом > 0!');
          }
		// ...
	//Проверим пустой ли массив
	if(!empty($mybject))
		$this->mybject=$mybject;
	//Проверка на массив
	if (is_array($mybject))
		$this->value = count($mybject);
	//Проверка на строку
	if (is_string($mybject))
		$this->value = strlen($mybject);
	//Если второй аргумент меньше первого, поменяем
	if ($array_for_cycle[0] > $array_for_cycle[1]) {
		$this->temp =	$array_for_cycle[1];
		$array_for_cycle[1] = $array_for_cycle[0];
		$array_for_cycle[0] = $this->temp;
		}
	if ($array_for_cycle[1] < $this->value && $array_for_cycle[1] > 0)
		$this->value = $array_for_cycle[1];
		//Для вывода в обратном порядке
		$this->j = $this->value - 1;
	}
//Напечатать значения
	public function startCyclePrintValues () {
	// ...
			for ($this->i; $this->i < $this->value; $this->i++)
			print $this->mybject[$this->i];
	}
//Напечатать ключи
	public function startCyclePrintKeys () {
	// ...
			for ($this->i; $this->i < $this->value; $this->i++)
			print $this->i;
	}
//Вернуть Json
	public function startCycleReturnJson () {
	// ...
			for ($this->i; $this->i < $this->value; $this->i++)
			$this->thejson[]=$this->mybject[$this->i];
			return json_encode($this->thejson);
	}
//Вернуть строкой
	public function startCycleReturnString () {
	// ...
			for ($this->i; $this->i < $this->value; $this->i++)
			$this->mystring.=$this->mybject[$this->i];
			return $this->mystring;
	}
//Вернуть строкой в Json
	public function startCycleReturnJsonString () {
	// ...
			for ($this->i; $this->i < $this->value; $this->i++)
			$this->mystring.=$this->mybject[$this->i];
			return json_encode($this->mystring);
	}
	//Напечатать значения в обратном порядке
	public function startCyclePrintValuesReversed () {
	// ...
			for ($this->i; $this->i < $this->value; $this->i++)
			print $this->mybject[$this->j--];
	}
	//Напечатать ключи в обратном порядке
	public function startCyclePrintKeysReversed () {
	// ...
			for ($this->i; $this->i < $this->value; $this->i++)
			print $this->j--;
	}
	//Цикл для JSON из Mysqli запроса
	//Start method Return Json  From Class_Chat
	public function FethcAssocArrayReturnJson($fetch_assoc_arr) {
	// ...   /*Получаем массив*/
            while($this->myobject=$fetch_assoc_arr->fetch_assoc()) {
            $this->thejson[] = $this->myobject;
            }
            return $this->thejson;
	}
}
//Для цикла откуда начать и где закончить
if (!isset($array_for_cycle))
$array_for_cycle=array(0, 0);
//Массив, который требуется обойти циклом
if (!isset($mybject))
$mybject=array(0, 0);
