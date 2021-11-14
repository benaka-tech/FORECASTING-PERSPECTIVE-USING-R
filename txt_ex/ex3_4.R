require(fpp2)
autoplot(dole)
lambda_dole <- BoxCox.lambda(dole)
autoplot(BoxCox(dole, lambda_dole))
# For dole data, it looked like using Box-Cox Transformation would be better to see the pattern
autoplot(usdeaths)
lambda_usdeaths <- BoxCox.lambda(usdeaths)
autoplot(BoxCox(usdeaths, lambda_usdeaths))
# For usdeaths data, it looked like it is meaningless to transform it
autoplot(bricksq)
lambda_bricksq <- BoxCox.lambda(bricksq)
autoplot(BoxCox(bricksq, lambda_bricksq))
