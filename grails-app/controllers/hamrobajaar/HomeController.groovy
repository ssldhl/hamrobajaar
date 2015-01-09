package hamrobajaar

import grails.converters.JSON

class HomeController {

    def dataService
    def paramService

    def index() {
        String paramString = paramService.createGeneralRequest(['table':'items','report':'featuredItems'])
        def featuredData = dataService.fetchData(paramString, "dashboard")
        
        try{
            featuredData = JSON.parse(featuredData.toString())
            featuredData = featuredData.getAt('Result')
        }catch(e){
            log.error(e)
        }
        
        [featuredData:featuredData]
    }
}
