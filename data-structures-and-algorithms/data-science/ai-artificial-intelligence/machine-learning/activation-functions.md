# Activation functions

activation-functions.md

https://en.wikipedia.org/wiki/Activation_function

https://www.v7labs.com/blog/neural-networks-activation-functions

https://towardsdatascience.com/activation-functions-neural-networks-1cbd9f8d91d6

https://www.datacamp.com/tutorial/introduction-to-activation-functions-in-neural-networks

https://www.geeksforgeeks.org/activation-functions-neural-networks/

https://www.analyticsvidhya.com/blog/2021/04/activation-functions-and-their-derivatives-a-quick-complete-guide/

https://ml-cheatsheet.readthedocs.io/en/latest/activation_functions.html

Activation functions in neural networks play a crucial role in determining the output of a neural network model. They are mathematical equations that determine whether a neuron should be activated or not based on the weighted sum of its inputs. The choice of activation function affects the network's ability to learn complex patterns and its overall performance. Here are some of the most common activation functions:
1. **Sigmoid (Logistic) Function**: It maps the input (a linear combination of weighted inputs) to a value between 0 and 1. It's often used for binary classification problems. The sigmoid function is defined as \(f(x) = \frac{1}{1 + e^{-x}}\). However, it suffers from the vanishing gradient problem, making it less used in deep networks.
2. **Hyperbolic Tangent (tanh) Function**: Similar to the sigmoid but maps the input to a range between -1 and 1. It is defined as \(f(x) = \tanh(x) = \frac{2}{1 + e^{-2x}} - 1\). It's better than sigmoid for hidden layers because it centers the output, making the next layer's learning slightly easier.
3. **Rectified Linear Unit (ReLU)**: Currently, one of the most popular activation functions due to its simplicity and efficiency, defined as \(f(x) = \max(0, x)\). It activates a neuron only if the input is above a certain threshold (0 in this case). ReLU helps with the vanishing gradient problem but can suffer from the dying ReLU problem, where neurons permanently output zeros.
4. **Leaky ReLU**: A variation of ReLU designed to address the dying ReLU problem by allowing a small, non-zero gradient when the unit is not active, defined as \(f(x) = x\) if \(x > 0\), else \(\alpha x\) where \(\alpha\) is a small constant.
5. **Exponential Linear Unit (ELU)**: Another variation of ReLU that reduces the vanishing gradient effect, defined as \(f(x) = x\) if \(x > 0\), else \(\alpha(e^x - 1)\). It tends to converge cost to zero faster and produce more accurate results.
6. **Softmax**: Often used in the output layer of a neural network model for multi-class classification problems. It turns logits (numeric output values from the last linear layer of a network) into probabilities by taking the exponential of each output and then normalizing these values by the sum of all the exponentials.