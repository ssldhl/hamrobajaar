package hamrobajaar

class SessionFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {

            }
            after = { Map model ->
                if(model != null){
                    model.put('applicationTitle', 'Hamrobajaar')
                }
            }
            afterView = { Exception e ->

            }
        }
    }
}
