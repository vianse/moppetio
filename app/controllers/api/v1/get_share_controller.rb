class Api::V1::GetShareController <ApplicationController
	def index
    @resultado = Compartir.select(:id,:name,:rfc,:address,:phone,:email,:uid,:token).where(:token => params[:token]).where(:uid => DateTime.now.strftime("%F")).last
    render json: @resultado
    #render json: @resultado
	end
end
