<table>
  <thead>
    <tr>
      <th>Peso</th>
      <th>Altura</th>
      <th>Fecha</th>
      <th>Descripcion</th>      
      <th colspan="4"></th>
    </tr>
  </thead>
  <tbody>
    <% @pet_histories.each do |pet_history| %>
      <tr>
        <td><%= pet_history.weight %></td>
        <td><%= pet_history.height %></td>
        <td><%= pet_history.visit_date %></td>
        <td><%= pet_history.description %></td>
        <td><%= link_to "Ver", pet_history %></td>
        
      </tr>
    <% end %>
  </tbody>
</table>
