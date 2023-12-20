#from .activation import Activation
from .axon import Axon


# struct Neuron[T: AnyType]:
#     var value: T
#     """Neuron value."""


# struct SynapseIncoming[T: AnyType]:
#     var incoming: ListLiteral[Axon[T]]  # Box<Vec<Axon<'a, T>>>
#     """All incoming axons."""


# struct SynapseOutgoing[T: AnyType]:
#     var outgoing: ListLiteral[Axon[T]]  # Box<Vec<&'a Axon<'a, T>>>
#     """All outgoing axons."""


# struct Cell[T: AnyType](Neuron, SynapseIncoming):
#     var miss: T
#     """Neuron error."""

#     var bias: Bool
#     """Bias."""

#     var activation: Activation
#     """Function activation."""


# struct Input[T: AnyType](Neuron, SynapseOutgoing):
#     pass


# struct Output[T: AnyType](Cell):
#     var target: T
#     """Target neuron."""


# struct Hidden[T: AnyType](Cell, SynapseOutgoing):
#     fn __init__(inout self):
#         pass

struct InputCell[T: AnyType]:
    var value: T
    var outgoing: ListLiteral[Axon[T]]


struct OutputCell[T: AnyType]:
    var value: T
    var miss: T
    var target: T
    var incoming: ListLiteral[Axon[T]]
    var bias: Bool
    var activation: UInt8 #Activation

@value
struct HiddenCell[T: AnyType]:
    var value: T
    var miss: T
    var incoming: ListLiteral[Axon[T]]
    var outgoing: ListLiteral[Axon[T]]
    var bias: Bool
    var activation: UInt8 #Activation

    # fn __init__(inout self):
    #     pass

    fn __str__(self) -> String:
        return "HiddenCell"


fn main():
    let h = HiddenCell[Float32]()
    print(h)
