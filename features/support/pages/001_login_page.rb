class Login < SitePrism::Page
  
    #Elementos: Inputs Mapeados
    element :login, 'tr.row-1:nth-child(2) > td:nth-child(2) > input:nth-child(1)'
    element :password, 'tr.row-2:nth-child(3) > td:nth-child(2) > input:nth-child(1)'
   
    ##metodo de acao: Logar no Sistema
    def logar(usuario, senha)
        login.set usuario
        password.set senha
        click_button 'Entrar'
    end
end