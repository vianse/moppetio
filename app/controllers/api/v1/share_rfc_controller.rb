class Api::V1::ShareRfcController <ApplicationController
  require 'sinch_sms'
	def index
   a = SinchSms.send('424cb9f4-30a7-4fee-98a7-de6a71bb7d0d', 'BeV/azR3NkSEsBIiI5kdVA==', 'Wallet RFC, Juan Carlos Santiago te ha compartido sus Datos Fiscales, para verlos da click aquí www.google.com', '5548225097')
   $redis.hmset(params[:q],"Fecha",Time.now, "CodigoPostal", params[:cp])
  end
end
