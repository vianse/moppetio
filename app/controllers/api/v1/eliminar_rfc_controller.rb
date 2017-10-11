class Api::V1::EliminarRfcController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def create
   eliminar = Rfc.find(params[:id])
   eliminar.delete
 end
end
