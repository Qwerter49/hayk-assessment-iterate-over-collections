require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

#Generates a list of strings with the name and size (eg. "Alpha - 30")
def list_of_companies companies
    companies.map{|company| "#{company.name} - #{company.size}"}
end

#Combine all the sizes with reduce
def total_size companies
    companies.map{|company| company.size}.reduce{|sum, n| sum + n}
end

#Filter the list to show only companies over 100
def over_100 companies
    companies.select{|company| company.size > 100}
end

#Find the company named "Beta"
def find_beta companies
    companies.find{|company| company.name == "Beta"}
end

#Find the largest company
def find_largest_company companies
    companies.max{|company|company.size}
end

#Sort the companies from largest to smallest
def companies_sorted_by_size companies  
    companies.sort {|company| company.size}
end

