require(fpp2)
autoplot(cangas)
lambda_cangas <- BoxCox.lambda(cangas)
autoplot(BoxCox(cangas, lambda_cangas))
