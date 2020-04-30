##### Creates snippet that will setup a index view by running `indexview`
<em><sub>nested within ```'.text.html.erb':``` </sub></em>

```coffeescript
  'IndexView':
    'prefix': 'indexview'
    'body': """
    <h1>$1</h1>

    <table>
    <thead>
      <tr>
        <th>$2</th>
        <th colspan="3"></th>
      </tr>
    </thead>

    <tbody>
      <% @$3.each do |$4| %>
        <tr>
          <td><%= $5 %></td>

          <td><%= link_to "Show", $6 %></td>
          <td><%= link_to "Edit", $7 %></td>
          <td><%= link_to "Destroy", $8, method: :delete, data: { confirm: "Are you sure?" } %></td>
        </tr>
      <% end %>
    </tbody>
    </table>
    """
  ```
