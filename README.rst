.. raw:: html

    <p align="center">
        <img width="75%" style="display: block;" src='docs/partial_source/logos/logo.png'>
    </p>

.. raw:: html

    <br/>
    <a href="https://pypi.org/project/ivy-core">
        <img style="float: left; padding-right: 4px; padding-bottom: 4px;" src="https://badge.fury.io/py/ivy-core.svg">
    </a>
    <a href="https://github.com/ivy-dl/ivy/actions?query=workflow%3Adocs">
        <img style="float: left; padding-right: 4px; padding-bottom: 4px;" src="https://img.shields.io/github/workflow/status/ivy-dl/ivy/docs?label=docs">
    </a>
    <a href="https://github.com/ivy-dl/ivy/actions?query=workflow%3Anightly-tests">
        <img style="float: left; padding-right: 4px; padding-bottom: 4px;" src="https://img.shields.io/github/workflow/status/ivy-dl/ivy/nightly-tests?label=tests">
    </a>
    <a href="https://discord.gg/EN9YS3QW8w">
        <img style="float: left; padding-right: 4px; padding-bottom: 4px;" src="https://img.shields.io/discord/799879767196958751?color=blue&label=%20&logo=discord&logoColor=white">
    </a>
    <br clear="all" />

**The templated deep learning framework, enabling framework-agnostic functions, layers and libraries.**

.. raw:: html

    <div style="display: block;">
        <img width="4%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/supported/empty.png">
        <a href="https://jax.readthedocs.io">
            <img width="12%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/supported/jax_logo.png">
        </a>
        <img width="6.66%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/supported/empty.png">
        <a href="https://www.tensorflow.org">
            <img width="12%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/supported/tensorflow_logo.png">
        </a>
        <img width="6.66%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/supported/empty.png">
        <a href="https://pytorch.org">
            <img width="12%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/supported/pytorch_logo.png">
        </a>
        <img width="6.66%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/supported/empty.png">
        <a href="https://mxnet.apache.org">
            <img width="12%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/supported/mxnet_logo.png">
        </a>
        <img width="6.66%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/supported/empty.png">
        <a href="https://numpy.org">
            <img width="12%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/supported/numpy_logo.png">
        </a>
    </div>

Contents
--------

* `Overview`_
* `In a Nutshell`_
* `Where Next?`_

Overview
--------

.. _docs: https://ivy-dl.org/ivy

**What is Ivy?**

Ivy is a templated deep learning framework which maximizes the portability of deep learning codebases.
Ivy wraps the functional APIs of existing frameworks.
Framework-agnostic functions, libraries and layers can then be written using Ivy,
with simultaneous support for all frameworks.
Ivy currently supports Jax, TensorFlow, PyTorch, MXNet and Numpy. Check out the docs_ for more info!

**Ivy Libraries**

There are a host of derived libraries written in Ivy, in the areas of mechanics, 3D vision, robotics,
differentiable memory, and differentiable gym environments. Click on the icons below for their respective github pages.

.. raw:: html

    <div style="display: block;">
        <img width="8%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/empty.png">
        <a href="https://github.com/ivy-dl/mech">
            <img width="15%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/ivy_mech.png">
        </a>
        <img width="2%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/empty.png">
        <a href="https://github.com/ivy-dl/vision">
            <img width="15%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/ivy_vision.png">
        </a>
        <img width="2%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/empty.png">
        <a href="https://github.com/ivy-dl/robot">
            <img width="15%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/ivy_robot.png">
        </a>
        <img width="2%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/empty.png">
        <a href="https://github.com/ivy-dl/memory">
            <img width="15%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/ivy_memory.png">
        </a>
        <img width="2%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/empty.png">
        <a href="https://github.com/ivy-dl/gym">
            <img width="15%" style="float: left;" src="https://raw.githubusercontent.com/ivy-dl/ivy-dl.github.io/master/img/externally_linked/logos/ivy_gym.png">
        </a>
    </div>
    <br clear="all" />

**Quick Start**

Ivy can be installed like so: ``pip install ivy-core``
You can immediately use Ivy to train a neural network, using your favourite framework in the background, like so:

.. code-block:: python

    import ivy

    class MyModel(ivy.Module):
        def __init__(self):
            self.linear0 = ivy.Linear(3, 64)
            self.linear2 = ivy.Linear(64, 1)
            ivy.Module.__init__(self)

        def _forward(self, x):
            x = ivy.relu(self.linear0(x))
            return ivy.sigmoid(self.linear2(x))

    ivy.set_framework('torch')  # change to any framework!
    model = MyModel()
    optimizer = ivy.Adam(1e-4)
    x_in = ivy.array([1., 2., 3.])
    target = ivy.array([0.])

    def loss_fn(v):
        out = model(x_in, v=v)
        return ivy.reduce_mean((out - target)**2)[0]

    for step in range(100):
        loss, grads = ivy.execute_with_gradients(loss_fn, model.v)
        model.v = optimizer.step(model.v, grads)
        print('step {} loss {}'.format(step, ivy.to_numpy(loss).item()))

    print('Finished training!')

This example uses PyTorch as a backend framework,
but the backend can easily be changed to your favourite framework, such as TensorFlow, JAX or MXNet.

**Framework Agnostic Functions**

In the example below we show how Ivy's concatenation function is compatible with tensors from different frameworks.
This is the same for ALL Ivy functions. They can accept tensors from any framework and return the correct result.

.. code-block:: python

    import jax.numpy as jnp
    import tensorflow as tf
    import numpy as np
    import mxnet as mx
    import torch

    import ivy

    jax_concatted = ivy.concatenate((jnp.ones((1,)), jnp.ones((1,))), -1)
    tf_concatted = ivy.concatenate((tf.ones((1,)), tf.ones((1,))), -1)
    np_concatted = ivy.concatenate((np.ones((1,)), np.ones((1,))), -1)
    mx_concatted = ivy.concatenate((mx.nd.ones((1,)), mx.nd.ones((1,))), -1)
    torch_concatted = ivy.concatenate((torch.ones((1,)), torch.ones((1,))), -1)

To see a list of all Ivy methods, type :code:`ivy.` into a python command prompt and press :code:`tab`.
You should then see output like the following:

.. image:: docs/partial_source/images/ivy_tab.png
   :width: 100%

Based on this short code sample alone, you may wonder, why is this helpful?
Don't most developers stick to just one framework for a project?
This is indeed the case, and the benefit of Ivy is **not** the ability to combine different frameworks in a single project.

So what is the benefit of Ivy?

In a Nutshell
-------------

Ivy's strength arises when we want to maximize the usability of our code.

We can write a set of functions **once** in Ivy, and share these with the community so that **all** developers can use them,
irrespective of their personal choice of framework. TensorFlow? PyTorch? Jax? With Ivy code it doesn't matter!

This makes it very simple to create highly portable deep learning codebases.
The core idea behind Ivy is captured by the example of the :code:`ivy.clip` function below.

.. raw:: html

    <p align="center">
        <img width="75%" style="display: block;" src='docs/partial_source/images/a_templated_framework.png'>
    </p>

On it's own this may not seem very exciting, there are more interesting things to do in deep learning than clip tensors.
Ivy is a building block for more interesting applications.

For example, the Ivy libraries for mechanics, 3D vision, robotics, and differentiable environments are all written in pure Ivy.
These libraries provide fully differentiable implementations of various applied functions,
primed for integration in end-to-end networks, for users of any deep-learning framework.

Another benefit of Ivy is user flexibility.
By keeping the Ivy abstraction lightweight and fully functional, this keeps you in full control of your code.
The schematic below emphasizes that you can choose to develop at any abstraction level.

.. raw:: html

    <p align="center">
        <img width="50%" style="display: block;" src='docs/partial_source/images/abstraction_hierarchy.png'>
    </p>

You can code entirely in Ivy, or mainly in their native DL framework, with a small amount of Ivy code.
This is entirely up to you, depending on how many Ivy functions you need from existing Ivy libraries,
and how much new Ivy code you add into your own project, to maximize it's audience when sharing online.

Where Next?
-----------

.. _`Using Ivy`: https://ivy-dl.org/ivy/using_ivy.html

So, now that you've got the gist of Ivy, and why it's useful. Where to next?

This depends on whether you see yourself in the short term as more likely to be an Ivy library *user* or an Ivy library *contributor*.

If you would like to use the existing set of Ivy libraries, dragging and dropping key functions into your own project,
then we suggest you dive into some of the demos for the various Ivy libraries currently on offer.
Simply open up the main docs_, then open the library-specific docs linked on the bottom left, and check out the demos folder in the library repo.

On the other hand, if you have your own new library in mind,
or if you would like to implement parts of your own project in Ivy to maximise its portability,
then we recommend checking out the page `Using Ivy`_ in the docs.
Here, we dive a bit deeper into the Ivy framework,
and the best coding practices to get the most out of Ivy for your own codebases and libraries.

Citation
--------

::

    @article{lenton2021ivy,
      title={Ivy: Templated Deep Learning for Inter-Framework Portability},
      author={Lenton, Daniel and Pardo, Fabio and Falck, Fabian and James, Stephen and Clark, Ronald},
      journal={arXiv preprint arXiv:2102.02886},
      year={2021}
    }