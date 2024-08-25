<form class="col-3 m-auto formAddTask" action="insert_Partidos" method="POST">
  <legend class="text-center">Ingrese información a la Tabla </legend>
  <div class="mb-3">
    <label class="form-label">Partidos</label>
    <input type="text" name="Partidos_Politicos" class="form-control" placeholder="Ingrese nombre">
  </div>

  <div class="mb-3">
    <label class="form-label">Presidente</label>
    <input type="text" name="Presidente" class="form-control" placeholder="Ingrese nombre">
  </div>
  
  {foreach $Presidente as $a}
       <option value="{$a->id}">{$a->Presidente}</option>
     {/foreach}
   </select>
 </div>
  <button type="submit" class="btn btn-primary col-12">Submit</button>
</form>