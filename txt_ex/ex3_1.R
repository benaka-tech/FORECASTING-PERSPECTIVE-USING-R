require(fpp2)
lambda_usnetelec <- BoxCox.lambda(usnetelec)
print(c("Good value of lambda for usnetelec: ", 
        lambda_usnetelec))
autoplot(BoxCox(usnetelec, lambda_usnetelec))
# - usgdp
lambda_usgdp <- BoxCox.lambda(usgdp)
print(c("Good value of lambda for usgdp: ", 
        lambda_usgdp))
autoplot(BoxCox(usgdp, lambda_usgdp))
# - mcopper
lambda_mcopper <- BoxCox.lambda(mcopper)
print(c("Good value of lambda for mcopper: ", 
        lambda_mcopper))
autoplot(BoxCox(mcopper, lambda_mcopper))
# - enplanements
lambda_enplanements <- BoxCox.lambda(enplanements)
print(c("Good value of lambda for enplanements: ", 
        lambda_enplanements))
autoplot(BoxCox(enplanements, lambda_enplanements))
