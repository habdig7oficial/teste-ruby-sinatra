=begin

    Copyright © 2023 Felipe Chiozzotto Gozzani, Heloísa Real, Juliana Barbosa Sandes, Mateus Felipe da Silveira Vieira, Thiago Babtista da Silva Soares


    MedTempo-Backend++ is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    MedTempo-Backend++ is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with MedTempo-Backend++.  If not, see <https://www.gnu.org/licenses/>5.
    
=end

require "test/unit"
require "rack/test"


module TestModule
    def test_2_Login 
        3.times do | i |
            mock_usr = {
                "email"=> @@mock_email,
                "senha"=> @@mock_pass, 
                "user_type" => i + 1,
            }
    
            post "/login", JSON.generate(mock_usr), { "Content Type" => "application/json" }
    
            puts JSON.generate(last_response.body)
    
            assert last_response.ok?
    
            get "/"
    
            assert last_response.ok?
    
            #puts last_response.headers
    
            #puts last_response.cookies
        end
    end

    def test_1_AAAA
        get "/"

       # puts last_response.headers

        puts "cookie bg #{last_response.status}"

       # puts last_request.cookies

    end

end 