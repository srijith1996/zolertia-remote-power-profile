Procedure for power profiling RE-Mote
=====================================

Different configurations of radio and sensors
---------------------------------------------

For accessing the source code for this project, on this computer:

``` shell
example@test$ cd /home/srijith/satvam/contiki-test
example@test$ git checkout power-profile
example@test$ cd examples/udp-ipv6
example@test$ vim project-conf.h
  # edit the first three lines as per your need
  # more on this from line number __

example@test$ sudo make PORT=<dev tty port> udp-server.upload login

```

These different configurations should be tested:

1. Radio 
   ```c
      #define RDC         0     /* radio-off */
      #define RDC         1     /* radio-contikimac */
      #define RDC         2     /* radio-nullrdc */
   ```

2. Transmission
   ```c
      #define TRANSMIT_ON  0    /* transmit off */
      #define TRANSMIT_ON  1    /* transmit on */
   ```

3. Sensor
   ```c
      #define SENSOR_ON    0    /* sensor off  */
      #define SENSOR_ON    1    /* sensor on */
      /* note, just disabling this macro may not do
       * You must also physically disconnect the sensor
       */
   ```

Using the DSO and current probe (Tektronics)
--------------------------------------------


