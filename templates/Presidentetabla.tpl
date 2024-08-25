{if $Rango}
    {include 'NavigationBar.tpl'}
    {include 'Presidentesform.tpl'}
    <table class="table table-success table-striped mt-2">
        <thead>
            <tr>
                <th scope="col">Presidente</th>
                <th scope="col">Inicio del Mandato</th>
                <th scope="col">Fin del Mandato</th>
                
                <th scope="col">Configuración de admin</th>
            </tr>
        </thead>
        <tbody>
            {if $cantidad == 0}
                <tr>
                    <td colspan=5>No hay tareas para mostrar</td>
                </tr>
            {/if}
            {foreach $Presidente as $a}
                <tr>
                    <td>{$a->Presidente}</td>
                    <td>{$a->IniciodelPeriodo}</td>
                    <td>{$a->FindelPeriodo}</td>

                    <td> <a href='Verdatos/{$a->ID}' class='btn btn-primary'>Ver📖</a></td>


                    <td>
                        <a href='EliminarPresidente/{$a->ID}' class='btn btn-danger'>Eliminar🧹</a>
                    <td>

                </tr>
                {include 'htmlEnd.tpl'}
            {/foreach}
        {else}
            {include 'NavigationBar.tpl'}
            <table class="table table-success table-striped mt-2">
                <thead>
                    <tr>
                        <th scope="col">Presidente</th>
                        <th scope="col">Inicio del Mandato</th>
                        <th scope="col">Fin del Mandato</th>
                        
                    </tr>
                </thead>
                <tbody>
                    {if $cantidad == 0}
                        <tr>
                            <td colspan=5>No hay tareas para mostrar</td>
                        </tr>
                    {/if}
                    {foreach $Presidente as $a}
                        <tr>
                            <td>{$a->Presidente}</td>
                            <td>{$a->IniciodelPeriodo}</td>
                            <td>{$a->FindelPeriodo}</td>
                            <td> <a href='Verdatos/{$a->ID}' class='btn btn-primary'>Ver📖</a></td>
                        </tr>
                    {/foreach}
                    {include 'htmlEnd.tpl'}
{/if}