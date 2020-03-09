# Concurrency

Scala also has support for functional programming. 

    Tail-call optimization, a 
    proper lambda, and 
    higher-order functions. 



*   asynchronous cooperative multitasking [1]

    used by Node.js

*   pre-emptive state sharing concurrency[2].

    used by whereas other mainstream languages 

    terrors of pre-emptive concurrency in order to answer the easier question above: 
        Deadlock, 
        Race Condition, 
        Starvation, 
        Priority Inversion, 
        Livelock.

The terrors are notoriously hard to detect. They are going to stay hidden until a critical moment 
and then they are going hit you as hard as they can. 


But wait a second. It is not even true that in Node.js you cannot employ pre-emptive concurrency 
for parallelizable computations. Node.js just does it differently. Instead of spawning threads it forks your single process into parent coordinator with multiple children worker processes and it establishes a single event channel between all of them. There is a standard module called "cluster"[4] for it. So, if you have your nice and shiny octa-core i7 you are still fine. In Node.js you can still load all your cores while staying relatively safe. They say that message passing pre-emptive parallelism is less prone to concurrency terrors than state sharing.

Which leaves us with the only situation in which it would be better to write a dedicated C++ module for Node.js rather than trying to implement everything in pure Node.js: parallelizable computations with a large shared state that couldn't be efficiently serialized and passed through inter-process communication channels for each round of computations; like, for example, neural networks.

https://en.wikipedia.org/wiki/Cooperative_multitasking
https://en.wikipedia.org/wiki/Preemption_(computing)#Preemptive_multitasking
http://wiki.csie.ncku.edu.tw/embedded/priority-inversion-on-Mars.pdf



“Node.js Addons are dynamically-linked shared objects, written in C++, that can be loaded into Node.js using the require() function, and used just as if they were an ordinary Node.js module. They are used primarily to provide an interface between JavaScript running in Node.js and C/C++ libraries

At the moment, the method for implementing Addons is rather complicated, involving knowledge of several components and APIs :

V8 […]
libuv […]
Internal Node.js libraries […]
Node.js includes a number of other statically linked libraries including OpenSSL […]”.
Now, libuv is The C library that implements the Node.js event loop, its worker threads and all of the asynchronous behaviors of the platform. It also serves as a cross-platform abstraction library, giving easy, POSIX-like access across all major operating systems to many common system tasks, such as interacting with the filesystem, sockets, timers and system events. libuv also provides a pthreads-like threading abstraction that may be used to power more sophisticated asynchronous Addons that need to move beyond the standard event loop. Addon authors are encouraged to think about how to avoid blocking the event loop with I/O or other time-intensive tasks by off-loading work via libuv to non-blocking system operations, worker threads or a custom use of libuv's threads.

This clearly means that NodeJS is not single-threaded, thanks be given to libuv and its pthreads-like.


