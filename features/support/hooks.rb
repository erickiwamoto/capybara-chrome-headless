
Before do
    @po = HorsePage.new
    @po.load
end

After('@logout') do
    @po.do_logout
    @po.load
end

After do |scenario|
  ## nome do cenário
  scenario_name = scenario.name.simplify
  file_name = scenario_name.gsub(' ', '_')
  
  img_path = "results/images/"
  shot = "#{img_path}/#{file_name.downcase!}.png"
  
  # vai planeta
  page.save_screenshot(shot)
  embed(shot, 'image/png', 'Clique aqui pra ver o PRINT :)')

end