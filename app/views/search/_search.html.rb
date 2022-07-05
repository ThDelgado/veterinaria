     <br>
          <div class="container d-flex form-group">
              <%= search_form_for @q, url:"/search", method: :get, class:'d-flex' do |f| %>       
                  <%= f.search_field :body_i_cont_any, placeholder: "Descripcion...", class:"form-control me-2" %>
                  <%= f.submit "Buscar!", class:"btn btn-outline-success" %>
              <% end %>
          </div>
     <br>

