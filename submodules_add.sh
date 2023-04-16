#!/bin/bash
git rm -f carts
git rm -f front-end
git rm -f user
git rm -f shipping
git rm -f queue-master
git rm -f msd-java
git rm -f catalogue
git rm -f orders
git rm -f payment
git commit -am "Submodules remove"
git submodule add -f git@github.com:Deron-D/carts.git carts
git submodule add -f git@github.com:Deron-D/front-end.git front-end
git submodule add -f git@github.com:Deron-D/user.git user
git submodule add -f git@github.com:Deron-D/shipping.git shipping
git submodule add -f git@github.com:Deron-D/queue-master.git queue-master
git submodule add -f git@github.com:Deron-D/msd-java.git msd-java
git submodule add -f git@github.com:Deron-D/catalogue.git catalogue
git submodule add -f git@github.com:Deron-D/orders.git orders
git submodule add -f git@github.com:Deron-D/payment.git payment

#
#
