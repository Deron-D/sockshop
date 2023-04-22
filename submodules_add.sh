#!/bin/bash
#git rm -rf carts
#git rm -rf front-end
#git rm -rf user
#git rm -rf shipping
#git rm -rf queue-master
#git rm -rf msd-java
#git rm -rf catalogue
#git rm -rf orders
#git rm -rf payment
#git commit -am "Submodules remove"
git submodule add -f https://github.com/Deron-D/carts.git carts
git submodule add -f https://github.com/Deron-D/front-end.git front-end
git submodule add -f https://github.com/Deron-D/user.git user
git submodule add -f https://github.com/Deron-D/shipping.git shipping
git submodule add -f https://github.com/Deron-D/queue-master.git queue-master
git submodule add -f https://github.com/Deron-D/msd-java.git msd-java
git submodule add -f https://github.com/Deron-D/catalogue.git catalogue
git submodule add -f https://github.com/Deron-D/orders.git orders
git submodule add -f https://github.com/Deron-D/payment.git payment


