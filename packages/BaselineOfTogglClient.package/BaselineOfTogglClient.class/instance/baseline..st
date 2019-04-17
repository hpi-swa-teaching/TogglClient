baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'TogglClient-Core';
				package: 'TogglClient-Tests' with: [spec requires: #('TogglClient-Core')];
				yourself.
			spec
				group: 'default' with: #('TogglClient-Core');
				group: 'tests' with: #('TogglClient-Tests')];
				yourself