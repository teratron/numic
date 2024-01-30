struct Activation:
    """Activation.

    Mode:

    * LINEAR - Linear/identity (0);
    * RELU - ReLu (rectified linear unit) (1);
    * LEAKY_RELU - Leaky ReLu (leaky rectified linear unit) (2);
    * SIGMOID - Logistic, a.k.a. sigmoid or soft step (3);
    * TANH - TanH (hyperbolic tangent) (4).
    """

    alias LINEAR = SIMD[DType.uint8, 1]
    """LINEAR - Linear/identity (0)."""

    alias RELU: UInt8 = 1
    """RELU - ReLu (rectified linear unit) (1)."""

    alias LEAKY_RELU: UInt8 = 2
    """LEAKY_RELU - Leaky ReLu (leaky rectified linear unit) (2)."""

    alias SIGMOID: UInt8 = 3
    """SIGMOID - Logistic, a.k.a. sigmoid or soft step (3)."""

    alias TANH: UInt8 = 4
    """TANH - TanH (hyperbolic tangent) (4)."""
