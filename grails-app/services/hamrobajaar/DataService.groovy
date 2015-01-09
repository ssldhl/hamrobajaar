package hamrobajaar

import grails.transaction.Transactional

@Transactional
class DataService {
    def grailsApplication

    def fetchData(String parameters, module) {
        long startTime = System.nanoTime()
        def returnMap = getData(parameters,module)
        def data = [:]
        def hasCollision = !parameters.equals(returnMap['parameters'])
        if(returnMap && !hasCollision && !returnMap['data'].equals("{}") && returnMap['data']!=null && returnMap['data'].length()>100 ){
            data = returnMap['data']
        }else{
            if(returnMap && hasCollision){
                log.warn 'COLLISION: INPUT PARAM:' + parameters + ' != OUTPUT PARAM: ' +returnMap['parameters']
            }
            data = returnMap?.data
        }
        log.info("${getModuleUrl(module)}?${parameters}"+" "+"${((System.nanoTime() - startTime) / 1000000000)}")
        return data
    }

    def getData(String parameters, module) {
        if (!parameters) {
            return null
        }
        def moduleUrl = getModuleUrl(module)
        def url       = new URL(moduleUrl)
        def connection = null
        try {
            connection = url.openConnection()
            connection.setRequestMethod("POST")
            connection.doOutput = true
            Writer wr           = new OutputStreamWriter(connection.outputStream)
            //Environment.DEVELOPMENT != Environment.getCurrent()
            println "URL = " + moduleUrl+"?"+parameters

            wr.write(parameters)
            wr.flush()
            wr.close()
            connection.connect();
            if(connection.getResponseCode()==401){
                println "Error 401"
            }
            return [parameters:parameters,data:connection.content.text]
        }catch (e) {
            println "Error occured while fetching data. "/* + connection?.getResponseCode()*/
            log.error(e)
            return [parameters:parameters,data:null]
        }
    }

    def getModuleUrl(module){
        return grailsApplication.config.grails.backEndURL+module
    }
}