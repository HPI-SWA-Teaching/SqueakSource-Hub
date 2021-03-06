request-handling
getWatchingTimeline: username
	<get>
	<path: '/{username}/watching'>
	<produces: 'text/json'>
	
	| member timeline |
	
	member := SSRepository current memberAt: username ifAbsent: [^ self respondNotFound].
	timeline := self generateWatchingTimeline: member.							
	
	^ timeline asJson 