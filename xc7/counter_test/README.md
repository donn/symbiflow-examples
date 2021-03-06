# Counter test

This example design features a simple 4-bit counter driving LEDs. To
build the counter example, depending on your hardware, run:

``` bash
TARGET="arty_35" make -C counter_test
```

``` bash
TARGET="arty_100" make -C counter_test
```

``` bash
TARGET="basys3" make -C counter_test
```

``` bash
TARGET="nexys_video" make -C counter_test
```

``` bash
TARGET="zybo" make -C counter_test
```

At completion, the bitstreams are located in the build directory:

``` bash
cd counter_test/build/<board>
```

Now, for **Arty and Basys3**, you can upload the design with:

``` bash
openocd -f ${INSTALL_DIR}/${FPGA_FAM}/conda/envs/${FPGA_FAM}/share/openocd/scripts/board/digilent_arty.cfg -c "init; pld load 0 top.bit; exit"
```

The result should be as follows:

<img src="https://github.com/SymbiFlow/symbiflow-examples/raw/master/docs/images/counter-example-arty.gif" class="align-center" style="width:50.0%" alt="image" />

For **Zybo**, please follow the [guide on how to load a bitstream from
U-boot][].

Once the bitstream is loaded, the result should be as follows:

<img src="https://github.com/SymbiFlow/symbiflow-examples/raw/master/docs/images/counter-example-zyboz7.gif" class="align-center" style="width:50.0%" alt="image" />

On the picocom terminal, you can control the counter behaviour to stop
it, or let it count backwards, by toggling values of the EMIO pins of
the ARM Processing System (PS).

You can control the counter enable signal with:

``` bash
gpio set 54
gpio clear 54
```

If GPIO 54 is set, the counter is disabled. It is enabled if the GPIO 54
is cleared. The result should be as follows:

<img src="https://github.com/SymbiFlow/symbiflow-examples/raw/master/docs/images/counter-example-zyboz7-clken.gif" class="align-center" style="width:50.0%" alt="image" />

You can control the counter direction with:

``` bash
gpio set 55
gpio clear 55
```

If GPIO 55 is set, the counter goes backwards. It goes forwared if the
GPIO 54 is cleared. The result should be as follows:

<img src="https://github.com/SymbiFlow/symbiflow-examples/raw/master/docs/images/counter-example-zyboz7-reverse.gif" class="align-center" style="width:50.0%" alt="image" />

  [guide on how to load a bitstream from U-boot]: https://symbiflow-examples.readthedocs.io/en/latest/running-examples.html#load-bitstream-from-u-boot