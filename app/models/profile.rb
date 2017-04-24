class Profile < ApplicationRecord
	belongs_to :user
	has_many :languages, inverse_of: :profile
	has_many :families, inverse_of: :profile
	has_many :travellings, inverse_of: :profile
	has_many :organizations, inverse_of: :profile
	has_many :scientific_works, inverse_of: :profile
	has_many :achievements, inverse_of: :profile
	has_many :job_experiences, inverse_of: :profile
	has_many :formal_educations, inverse_of: :profile
	has_many :trainings, inverse_of: :profile



	accepts_nested_attributes_for :languages, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :families, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :travellings, reject_if: proc { |attributes| attributes['country'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :organizations, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :scientific_works, reject_if: proc { |attributes| attributes['title'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :achievements, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :job_experiences, reject_if: proc { |attributes| attributes['company_name'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :formal_educations, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
	accepts_nested_attributes_for :trainings, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
	#accepts_nested_attributes_for :languages, allow_destroy: true

	#reject_if: proc { |attributes| attributes['title'].blank? }


end
