package hamrobajaar

import grails.transaction.Transactional

@Transactional
class ParamService {

	def createGeneralRequest(params) {
		String serializedParams = ""
		params.each{ def index, def value ->
			serializedParams += "&"+index+"="+value
		}
		return serializedParams
	}
}
