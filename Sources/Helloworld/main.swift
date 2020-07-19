import AWSLambdaRuntime

Lambda.run { (context, payload: String, callback) in
    callback(.success("Hello world"))
}



