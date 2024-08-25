
        {include 'NavigationBar.tpl'}
        {include 'formpartidos.tpl'}

        <table class="table table-success table-striped mt-2">
            <thead>
                <tr>
                <th scope="col">Partido Politico</th>
                <th scope="col">Presidente</th>
                </tr>
            </thead>
            <tbody>
                {if $cantidad == 0}
                    <tr>
                        <td colspan=5>No hay tareas para mostrar</td>
                    </tr>
                {/if}
                {foreach $Partidos_Politicos as $a}
                    <tr>
                        <td>{$a->Partidos_Politicos}</td>
                        <td>{$a->Presidente}</td>
                    </tr>
                {/foreach}
                {include 'htmlEnd.tpl'}
