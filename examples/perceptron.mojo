"""TODO:"""
import time

from numic import Numic


def main() -> None:
    """Numic"""
    # Returns a new neural network instance.
    nm = Numic(
            bias=True,
            hidden_layers=[5, 3],
            activation_mode=Pynumic.TANH,
            loss_mode=Pynumic.MSE,
            loss_limit=1e-6,
            rate=0.3,
    )

    # Dataset.
    dataset = [0.27, -0.31, -0.52, 0.66, 0.81, -0.13, 0.2, 0.49, 0.11, -0.73, 0.28]
    len_input = 3  # Number of input data.
    len_output = 2  # Number of output data.
    len_data = len(dataset) - len_output + 1

    start = time.now()

    # Training.
    for _ in range(10_000):
        for i in range(len_input, len_data):
            _, _ = nm.train(dataset[i - len_input:i], dataset[i:i + len_output])

        # Verifying.
        _sum = _num = 0.0
        for i in range(len_input, len_data):
            _sum += nm.verify(dataset[i - len_input:i], dataset[i:i + len_output])
            _num += 1

        # Average error for the entire epoch.
        # Exiting the cycle of learning epochs, when the minimum error level is reached.
        if _sum / _num < nm.loss_limit:
            break

    print(f"Elapsed time: {time.now() - start}")

    # Writing the neural network configuration and weights to a file.
    # pn.write(config="perceptron.json", weights="perceptron_weights.json")

    pn.write("perceptron.json", flag="config")
    # pn.write("perceptron.json", flag="perceptron.json")
    # pn.write()

    # Check the trained data, the result should be about [-0.13 0.2].
    print("Check:", pn.query([-0.52, 0.66, 0.81]))
