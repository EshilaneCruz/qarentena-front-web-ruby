require 'csv'

Dado('que estou na página inicial') do
    @home_page = HomePage.new
    @home_page.load
end

Entao('os links para todas as midias sociais devem ser exibidos') do
    CSV.foreach("features/support/data/links.csv", headers: true) do |row|
        expect(@home_page.send("exists_#{row['links']}_link?")).to be true
    end
end

Entao('deve ser exibido o link para:') do | table |
    table.hashes.each do | value |
        expect(@home_page.send("exists_#{value["midia_social"]}_link?")).to be true
    end
end



