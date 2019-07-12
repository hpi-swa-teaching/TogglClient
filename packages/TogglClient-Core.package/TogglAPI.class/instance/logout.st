requests
logout

	^ WebClient new httpDelete: self class apiBaseline, self class sessionsEndpoint