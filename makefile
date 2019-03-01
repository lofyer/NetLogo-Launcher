all:
	platypus -a 'NetLogo Launcher' -X "nlogo" -i NetLogo.icns -Q Model.icns -o 'None' -R -D -y launch-netlogo.sh
	platypus -a 'NetLogo 3D Launcher' -X "nlogo" -i NetLogo.icns -Q Model.icns -o 'None' -R -D -y launch-netlogo-3d.sh

debug:
	platypus -a 'NetLogo Launcher' -X "nlogo" -i NetLogo.icns -Q Model.icns -D -y launch-netlogo.sh
	platypus -a 'NetLogo 3D Launcher' -X "nlogo" -i NetLogo.icns -Q Model.icns -D -y launch-netlogo-3d.sh

clean:
	rm -rf 'NetLogo Launcher.app'
	rm -rf 'NetLogo 3D Launcher.app'

