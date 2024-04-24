<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a mixed signal design that glues together a few bits to create a simple ADC.  It uses

  * An analog comparator, based on the design done by Stefan Schippers in [Analog schematic capture and simulation](https://www.youtube.com/watch?v=q3ZcpSkVVuc), re-captured in xschem and laid out with magic;
  
  * The analog blob from the R2R DAC in [Matt Venn's R2R DAC TT06 submission](https://github.com/mattvenn/tt06-analog-r2r-dac);
  
  * A digital signal processor and front end, created using Amaranth; and
  
  * A few analog switches and a 2:1 analog mux, created and laid out for the project.
  
While at it, I also laid out a version of the [p3 opamp from this project](https://github.com/argunda/tt06-tiny-opamp) and embedded it in for testing purposes.

![wowa ADC](images/wowaADC.jpg)


The ADC uses the DAC to set the threshold on the comparator and see what it says about the input signal--is it higher or lower--to perform a search and hone in on a digital value to output.  Doing it in this way, it manages to determine a value in about 60 clock cycles ).


The analog output of the comparator, R2R DAC and p3 opamp are all provided through analog pins for testing and experimentation.

A few options are available:

  * The system can perform a comparator calibration before each reading (which increases the processing time but should make things more reliable).  Enable this by holding the enable calibrations pin high;
  
  * Rather than feed the R2R DAC output to the comparator, it can receive input from an analog pin instead.  Set "use external threshold" input pin HIGH for this, and feed into appropriate analog pin.

### Internals

Some details about how it's built...

### Digital 
With no calibration enabled, it takes about 60 clock cycles to get a valid result
![No calib readings](images/trace-tworeadingsnocal.jpg)

In the above, there is a simulated analog comparator output (in red). The DAC is setting each bit, starting with the high bit, in turn.  If the comparator says HIGH when the output is checked, it means that the input voltage is higher than what we're comparing to so that bit is preserved. Each bit is set, if the comparator is low when we check, that bit is cleared from the eventual result.  When we reach the LSB, the result ready signal goes high--it's held that way for 3 clocks. Then the process repeats.

This all works with an FSM that goes through multiple steps, zoomed in here:
![FSM](images/trace-fsm.jpg)
For simplicity, we alway pass through the calibrating state, though it only lasts a single clock cycle when the use_calibration pin is low.

For things to work, the comparator does need some calibration, at least sometimes.  How often?  I don't know yet.  When use_calibration is high, the cycle has a period at the start where:

 * the DAC is set mid-range
 
 * the comparator receives the same input on both inputs and is put into calibrate mode 
 
 
 
![With calib readings](images/trace-withcals.jpg)

This actually charges up a capacitor internally which is used to adjust the comparator output.  Because this takes a finite amount of time, which was found to be around 400ns for reliable operation in simulation, I gave it 28 clock cycles of calib time to support a theoretical clock of up to 70MHz.

Using a conservative 50MHz clock, this means that readings can be done in about 1.75 microseconds with calibration, and 1.2 us without.  Assuming we need to cal every 3 samples, this gives the ADC a throughput of around 720k samples per second, or more than 560ksps if you want to keep it simple and sample all the time, on a 50MHz clock.


### Analog

The analog side of things is at the service of the digital.  The main ADC block is 

![WoWA Analog](images/wowa_analog.jpg)

The r2r DAC is simply controlled using 8 bits, the end.  Its output goes to a 2:1 analog mux--called one-hot here because I intended to make 4:1 and maybe other versions that'd just be one-hot but that's for later.

External input goes to one side of the comparator, and the output of this mux goes to the other -- that lets us send either the DAC output or whatever's coming in from an external pin to the other side for comparison.

That calibrated comparator has a CAL input.  That's because, inside of that symbol is this:
![WoWA Calibrated comparator](images/calibrated_comparator.jpg)

Another mux and and alanog switch, in addition to the comparator.  That lets us choose between sending the input or the threshold to the plus side of the comparator.  Sending the threshold to both inputs of the comparator seems useless, but that only happens when CALIB is HIGH, which also trips the analog switch and pipes the output of the comparator to the capacitor and the adjust pin on said comparator.  This is why it's a *calibrated* comparator: Hold CALIB high for a little bit, and the results come out looking a lot better.

Finally, inside that triangle is the actual comparator circuit, which I re-did watching a [video](https://www.youtube.com/watch?v=q3ZcpSkVVuc) of [Stefan Schippers](https://github.com/StefanSchippers) teaching some xschem design.

![wowa stefan comparator](images/wowa_comparator.jpg)

It's a bunch of FETs doing FET things.



## How to test

Bring enable comparator, and reset pin high, feed a target voltage (less than 1v8) into appropriate analog input pin, clock the device and watch the output bits on the digital side.

When result ready output pin pulses high, the output bits are a calculated result.

## External hardware

Voltage source for analog input.  Some way to look at outputs.
