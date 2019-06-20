requests
logout

	^ WebClient new httpDelete: self url, self sessionsEndpoint