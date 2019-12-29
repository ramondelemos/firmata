defmodule Firmata.Protocol.Sysex.SysexTest do
  use ExUnit.Case, async: true
  use FirmataTest.Helper

  import Firmata.Protocol.Sysex, only: [capability_response: 1]

  doctest Firmata.Protocol.Sysex

  @sysex <<127, 127, 0, 1, 11, 1, 1, 1, 4, 14, 127, 0, 1, 11, 1, 1, 1, 3, 8, 4, 14, 127, 0, 1, 11,
           1, 1, 1, 4, 14, 127, 0, 1, 11, 1, 1, 1, 3, 8, 4, 14, 127, 0, 1, 11, 1, 1, 1, 3, 8, 4,
           14, 127, 0, 1, 11, 1, 1, 1, 4, 14, 127, 0, 1, 11, 1, 1, 1, 4, 14, 127, 0, 1, 11, 1, 1,
           1, 3, 8, 4, 14, 127, 0, 1, 11, 1, 1, 1, 3, 8, 4, 14, 127, 0, 1, 11, 1, 1, 1, 3, 8, 4,
           14, 127, 0, 1, 11, 1, 1, 1, 4, 14, 127, 0, 1, 11, 1, 1, 1, 4, 14, 127, 0, 1, 11, 1, 1,
           1, 2, 10, 4, 14, 127, 0, 1, 11, 1, 1, 1, 2, 10, 4, 14, 127, 0, 1, 11, 1, 1, 1, 2, 10,
           4, 14, 127, 0, 1, 11, 1, 1, 1, 2, 10, 4, 14, 127, 0, 1, 11, 1, 1, 1, 2, 10, 4, 14, 6,
           1, 127, 0, 1, 11, 1, 1, 1, 2, 10, 4, 14, 6, 1, 127>>

  @pins [
    [
      supported_modes: [
        {:input_pullup, 11},
        {:i2c, 6},
        {:servo, 4},
        {:analog, 2},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:i2c, 6},
        {:servo, 4},
        {:analog, 2},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:analog, 2},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:analog, 2},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:analog, 2},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:analog, 2},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:pwm, 3},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:pwm, 3},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:pwm, 3},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:pwm, 3},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:pwm, 3},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:pwm, 3},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [
      supported_modes: [
        {:input_pullup, 11},
        {:servo, 4},
        {:output, 1},
        {:input, 0}
      ],
      mode: nil
    ],
    [supported_modes: [], mode: nil],
    [supported_modes: [], mode: nil]
  ]

  test "compatibility_response" do
    assert capability_response(@sysex)[:pins] == @pins
  end
end
