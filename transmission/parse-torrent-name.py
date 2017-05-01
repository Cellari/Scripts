import PTN
import sys

for arg in sys.argv[1:]:
	results=PTN.parse(arg)
	title=''
	season=''

	for result, value in results.items():
		if(result=='title'):
			title="{}".format(value)
		elif(result=='season'):
			season="/{} {}".format(result, value)

	if(title!=''):
		path="{}{}".format(title, season)
		sys.stdout.write(path)
		sys.stdout.flush()
		sys.exit(0)
	else:
		sys.exit(1)
