Bumps
=====

> BeagleBone Universal Multi Pololu Steppers

(currently: work in progress on 0.2 hardware update)

BeagleBone Black cape hosting Pololu stepper driver boards (and derivatives).
This helps making use of readily available drivers.
Version 0.1 (March 2014) is an experimental board to make hacking on [BeagleG][beagleg-url]
simpler, but eventually meant to help have a full 3D printing
(and CNC) solution with BeagleBone + Bumps. Version 0.2 fixes some quirks of the first
experimental version and will be ready for broader use.

Features
   * Simple, mostly passive board with cheap components.
   * Single supply; no separate 5V needed:
      * 5V switching supply to power the BeagleBone from motor voltage (12-36V).
      * Local 3.3V power supply to not put any strain on BBB 3.3V
   * 5 slots for [Pololu-compatible][pololu-url] stepper driver boards.
   * 1 Emergency switch input, directly wired to hardware-reset stepper drivers.
   * 2 high power PWM (Motor voltage, ~20A)
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
[schem]: https://github.com/hzeller/bumps/raw/master/img/bumps-schem.png
[board]: https://github.com/hzeller/bumps/raw/master/img/bumps-board.png
[assembled]: https://github.com/hzeller/bumps/raw/master/img/bumps-connect.jpg
