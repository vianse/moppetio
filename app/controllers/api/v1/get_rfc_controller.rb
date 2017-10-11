class Api::V1::GetRfcController <ApplicationController
	def index
    @resultado = Rfc.select(:id,:name,:rfc,:address,:phone,:email,:userId).where(:userId => params[:usuario])
    render json: @resultado
    #render json: @resultado
	end
end
