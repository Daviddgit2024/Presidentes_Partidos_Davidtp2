{if $Rango}
    {include 'NavigationBar.tpl'}
    {include 'formpartidos.tpl'}
    <table class="table table-success table-striped mt-2">
        <thead>
            <tr>
                <th scope="col">Partido Politico</th>
                
                <th scope="col">Configuración de admin</th>
            </tr>
        </thead>

        {if $cantidad == 0}
            <tr>
                <td colspan=5>No hay tareas para mostrar</td>
            </tr>
        {/if}
        {foreach $Partidos_Politicos as $a}
            <tr>
                <td>{$a->Partidos_Politicos}</td>
                
                <td>
                    <a href='EliminarPartido/{$a->ID}' class='btn btn-danger'>Eliminar🧹</a>
                <td>

            </tr>
            {include 'htmlEnd.tpl'}
        {/foreach}
{/if}