#!/bin/bash
#git rm -f src/carts
#git rm -f src/front-end
#git rm -f src/user
#git rm -f src/shipping
#git rm -f src/queue-master
#git rm -f src/msd-java
#git rm -f src/catalogue
#git rm -f src/orders
#git commit -am "Submodules remove"
git submodule add -f git@github.com:microservices-demo/carts.git src/carts
git submodule add -f git@github.com:microservices-demo/front-end.git src/front-end
git submodule add -f git@github.com:microservices-demo/user.git src/user
git submodule add -f git@github.com:microservices-demo/shipping.git src/shipping
git submodule add -f git@github.com:microservices-demo/queue-master.git src/queue-master
git submodule add -f git@github.com:microservices-demo/msd-java.git src/msd-java
git submodule add -f git@github.com:microservices-demo/catalogue.git src/catalogue
git submodule add -f git@github.com:microservices-demo/orders.git src/orders


