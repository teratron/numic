from .activation import Activation
from .axon import Axon


struct Neuron[T: AnyType]:
    var value: T
    """Neuron value."""


struct SynapseIncoming[T: AnyType]:
    var incoming: ListLiteral[Axon]  # Box<Vec<Axon<'a, T>>>
    """All incoming axons."""


struct SynapseOutgoing[T: AnyType]:
    var outgoing: ListLiteral[Axon]  # Box<Vec<&'a Axon<'a, T>>>
    """All outgoing axons."""


struct Cell[T: AnyType](Neuron, SynapseIncoming):
    var miss: T
    """Neuron error."""

    var bias: Bool
    """Bias."""

    var activation: Activation
    """Function activation."""


struct Input[T: AnyType](Neuron, SynapseOutgoing):
    pass


struct Output[T: AnyType](Cell):
    var target: T
    """Target neuron."""


struct Hidden[T: FloatLiteral](Cell, SynapseOutgoing):
    fn __init__(inout self):
        pass


fn main():
    let h = Hidden[42.0]()
    # print(h)
