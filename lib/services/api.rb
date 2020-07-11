 class StrainApi

    URL = "https://strainapi.evanbusse.com/#{ENV["STRAIN_API_KEY"]}/strains/search/all"

    def get_strain
        strains = HTTParty.get(URL) 
        strains.sort.map do |hash|  
            Strain.new(hash[0],hash[1]["flavors"],hash[1]["effects"]["positive"])
        end
    end  

end  
