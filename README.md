Bumps
=====

> BeagleBone Universal Multi Pololu Steppers

BeagleBone Black cape hosting Pololu stepper driver boards (and derivatives).
This helps making use of readily available drivers.
Right now just an experimental board to make hacking on [BeagleG][beagleg-url]
simpler, but eventually meant to help have a full 3D printing
(and CNC) solution with BeagleBone + Bumps.

Don't rely on anything here, this is likely to change. This is very much work
in progress, including learning how to use KiCad properly :)

Features
   * Simple, mostly passive board with cheap components.
   * 5V switching supply to power the BeagleBone from motor voltage (12-36V).
   * Local 3.3V power supply to not put any strain on BBB 3.3V
   * 5 slots for [Pololu-compatible][pololu-url] stepper boards.
   * 2 high power PWM (2 more planned)
   * 3 endswitch inputs.
   * 3 temperature sensor inputs.

![Schematic][schem]

[beagleg-url]: https://github.com/hzeller/beagleg
[pololu-url]: http://www.pololu.com/product/1182
[schem]: https://github.com/hzeller/bumps/raw/master/img/bumps-schem.png
