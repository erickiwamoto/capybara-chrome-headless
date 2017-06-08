#encoding: utf-8

Dado(/^que eu tenho um usuário com:$/) do |table|
  @user = OpenStruct.new(table.rows_hash)
end

Quando(/^faço login$/) do
    @po.do_login(@user.email, @user.senha)
end

Então(/^vejo o dashboard logado com a mensagem "([^"]*)"$/) do |msg|
    expect(@po.title_view.text).to eql msg
    expect(@po.usermenu.text).to eql @user.email
end

Então(/^vejo a mensagem "([^"]*)"$/) do |msg|
  expect(@po.alert.text).to include msg
end