struct Activation:
    """Activation.

    Mode:

    * LINEAR - Linear/identity (0);
    * RELU - ReLu (rectified linear unit) (1);
    * LEAKY_RELU - Leaky ReLu (leaky rectified linear unit) (2);
    * SIGMOID - Logistic, a.k.a. sigmoid or soft step (3);
    * TANH - TanH (hyperbolic tangent) (4).
    """
    
    var LINEAR: Int8
    """LINEAR - Linear/identity (0)."""

    var RELU: Int8
    """RELU - ReLu (rectified linear unit) (1)."""

    var LEAKY_RELU: Int8
    """LEAKY_RELU - Leaky ReLu (leaky rectified linear unit) (2)."""

    var SIGMOID: Int8
    """SIGMOID - Logistic, a.k.a. sigmoid or soft step (3)."""

    var TANH: Int8
    """TANH - TanH (hyperbolic tangent) (4)."""