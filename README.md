# MATRIX Application

This application serves as the main Backend Domain Logic & Frontend Application for Matrix Project.

This application utilizes two external services by consuming their Json Data:

* Machines: https://github.com/syedanabimam/machines

* Resistance: https://github.com/syedanabimam/zion

To initiate the project, run these commands:

* Clone the repository to your local

* bundle install

* rake db:setup

* rake db:create

* rake db:seed to seed the database

* rails s -p 3000

* Sign up as an architect

Other two services have been pre-configured to make their Puma servers listen to ports other than 3000.

But here is how they should be initialized and configured:

* Clone the services repository to your local

* bundle install

* rake db:setup

* rake db:create

* rake db:seed to seed the database

* Then use postman to push data for sentinel and agents to machine services & resistance members and resistance ships to resistance services

* The data pushed will in turn be displayed in the main app through HttParty

* For now only data will be displayed in Json format, a more proper usage would have been CRUD ops and other actions that could not be implemented. An idea of what those actions could be seen in the_matrix/config/routes.rb commented code.
