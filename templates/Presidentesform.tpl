<form class="col-3 m-auto formAddTask"  action='insert_Presidente' method="POST">
  <legend class="text-center">Ingrese información a la Tabla </legend>
  <div class="mb-3">
    <label class="form-label"> Presidente</label>
    <input type="text" name="Presidente" class="form-control" placeholder="Ingrese nombre">
  </div>
  <div class="mb-3">
    <label class="form-label">Inicio del Periodo</label>
    <input type="number" name="IniciodelPeriodo" class="form-control" placeholder="Ingrese descripción">
  </div>
  <div class="mb-3">
    <label for="fecha">Fin del Periodo</label>
    <input type="number" name="FindelPeriodo">
  </div>
  <button type="submit" class="btn btn-primary col-12">Submit</button>
</form>