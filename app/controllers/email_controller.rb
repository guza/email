class EmailController < ApplicationController

	def email_form
	end

	def email_send
		@email=params[:email]
		@content=params[:email]
		@title = params[:title]

		gmail = Gmail.connect(".. " , "....")
		gmail.deliver do
			to email
			subject title
			text_part do
				body content
			end
		end	

	end


end
