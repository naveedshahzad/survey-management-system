FactoryBot.define do
	factory Survey do
		sequence(:name) { |n| "Test Survey #{n}" }
		description {'Hello world!'}
		#sequence(:email) { |n| "testuser#{n}@crossover.com" }
		#published true
	end
end
