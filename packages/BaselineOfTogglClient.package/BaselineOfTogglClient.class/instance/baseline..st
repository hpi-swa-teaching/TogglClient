baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'TogglClient-Core';
				package: 'TogglClient-Tests' with: [spec requires: #('TogglClient-Core')];
				package: 'JSON' with: 
					[ spec
     					file: 'JSON-ul.35';	
       					repository: 'http://www.squeaksource.com/JSON' ];
				yourself.
			spec
				group: 'default' with: #('TogglClient-Core');
				group: 'tests' with: #('TogglClient-Tests')];
				yourself