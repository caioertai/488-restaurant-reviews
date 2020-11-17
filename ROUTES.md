<!-- CRUD -->
verb    path              controller#action
<!-- Read -->
GET     /tasks            tasks#index
GET     /tasks/:id        tasks#show

<!-- Create -->
GET     /tasks/new        tasks#new
POST    /tasks            tasks#create

<!-- Update -->
GET     /tasks/:id/edit   tasks#edit
PUT     /tasks/:id        tasks#update
PATCH   /tasks/:id        tasks#update

<!-- Delete -->
DELETE  /tasks/:id        tasks#destroy
