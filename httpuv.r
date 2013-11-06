library(rjson)
library(httpuv)

app2 <- function(env){ 
    list(
        status=200,
        headers = list(
            'Content-Type' = 'text/html',
	    
'Access-Control-Allow-Origin'='*',
'Access-Control-Allow-Methods'='GET,POST,PUT',
'access-control-allow-headers'='accept, accept-charset, accept-encoding, accept-language, authorization, content-length, content-type, host, origin, proxy-connection, referer, user-agent, x-requested-with'
    
        ),
	body = paste(capture.output(cat(toJSON(eval(env=globalenv(),parse(text=sub("param=","",rawToChar(env$rook.input$read()))))))))
    )
}

runServer("0.0.0.0", 8888, app= app2)
