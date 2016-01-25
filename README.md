Bumps
=====

> BeagleBone Universal Multi Pololu Steppers

BeagleBone Black cape for [BeagleG][beagleg-url]; using 5 stepper driver modules
from Pololu.

Bumps is an board to work together with [BeagleG][beagleg-url], a fast
GCode system for CNC/3D printers and one of the first making use of the PRU
of the Beaglebone Black for extremely fast step generation.

Find this Revision 0.2 from June 2015 [shared on OshPark][osh-bumps1]. Or use
the [Gerber files](./gerbers/bumps-gerbers.zip) directly.

### Version History

  * Version 0.1 March 2014 ; 5 Stepper drivers, 2 Power PWMs, 2 small PWM, 2 aux outputs.
  * Version 0.2 June 2015; small revision of otherwise great first board (fix a missing pullup and wrong solder-mask at one place).
  * Version 0.3 - work in progress in master branch.

### Features
   * Simple, mostly passive board with cheap components.
   * Single supply; no separate 5V needed:
      * 5V switching supply to power the BeagleBone from motor voltage (12-36V).
      * Local 3.3V power supply to not put any strain on BBB 3.3V
   * 5 slots for [Pololu-compatible][pololu-url] stepper boards.
   * 2 high power PWM (Motor voltage, ~15A)
   * 2 Open Collector PWM for smaller loads (Up to 20V, ~2A)
   * 2 Open Collector Auxilliary Outputs (Up to 20V, ~2A)
   * 3 endswitch inputs.
   * 3 temperature sensor inputs.

![Schematic][schem]
![Board][board]

In real life

![Assembled][assembled]

  * Board fabbed by http://oshpark.com/
  * Solder paste dispensed with http://github.com/jerkey 's 3D printer, using
	a program to translate a KiCAD file to GCode (https://github.com/hzeller/rpt2paste )
	.. the whole thing made it to Hackaday:
	http://hackaday.com/2014/04/02/dispensing-solder-paste-with-a-3d-printer/
  * Assembled using a self-made vacuum tweezer
	https://plus.google.com/u/0/+HennerZeller/posts/b3NbB7NzQcM

[beagleg-url]: https://github.com/hzeller/beagleg
[pololu-url]: http://www.pololu.com/product/1182
[schem]: ./img/bumps-schem.png
[board]: ./img/bumps-board.png
[assembled]: ./img/bumps-connect.jpg
[osh-bumps1]: https://oshpark.com/shared_projects/zIXfRqD
