tests
testMembers
	| json |
	
	SSRepository current addMember: (SSMember login: 'maxmuster').
	json := self getJson: #('maxmuster').		
	
	self assert: (json includesKey: 'name');
		assert: (json includesKey: 'created');
		assert: (json includesKey: 'mcUsername');
		assert: (json includesKey: 'path');
		assert: (json includesKey: 'website');
		assert: (json includesKey: 'sid');
		assert: (json includesKey: 'admin');
		assert: (json includesKey: 'watching');
		assert: (json includesKey: 'location');
		assert: (json includesKey: 'fullName');
		assert: (json includesKey: 'username');
		assert: (json includesKey: 'email').