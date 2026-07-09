# 05 - MOSFET + summer

För 2N7000 enligt Microchip TO-92:

- Pin 1 Source -> GND.
- Pin 2 Gate -> GPIO18 via 220 ohm.
- Pin 2 Gate -> GND via 100 kΩ pulldown.
- Pin 3 Drain -> summerns minus (-).
- Summerns plus (+) -> +5V.

Kontrollera alltid databladet för just din 2N7000 innan lödning.
