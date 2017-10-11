class Api::V1::CrearRfcController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
 end
 def create
    @Compartir = Rfc.create({
  		 	:name => params[:name],
  	 		:rfc => params[:rfc],
  	 		:address => params[:address],
  	 		:phone => params[:phone],
  	 		:email => params[:email],
  	 		:userId => params[:userId]

  	 })
     #a = SinchSms.send('424cb9f4-30a7-4fee-98a7-de6a71bb7d0d', 'BeV/azR3NkSEsBIiI5kdVA==', 'WalletData, ' + params[:name] + ' te ha compartido sus Datos Fiscales, para verlos da click aquí http://192.168.16.115:3000/api/v1/get_share?token=' + Digest::MD5.hexdigest(params[:rfc]),  params[:token])
     # $redis.hmset(params[:q],"Fecha",Time.now, "CodigoPostal", params[:cp])
 end
end
