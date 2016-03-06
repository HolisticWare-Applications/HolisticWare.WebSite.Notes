# RX Reactive Extensions

http://www.introtorx.com/

http://reactivex.io/tutorials.html

## Use Subject instead of IObservable implementations


IObservable should not be implemented

Don't implement IObservable<T> for the same reason why IEnumerable<T> is
often not implemented: somebody has most likely already built the thing 
wanted. 

Implementing IObservable is basically reimplementing Subject<T> for the 
most part.

Lazy implementation:


	var lazyObservable = Observable.Create<TFoo>
		(
			subj => 
			{ 
				/*TODO: Implement Me to load from reflection*/ 
			}
		)
		// This means it'll only calc once
		.Multicast(new Subject<TFoo>())   
		// This means it won't get created until someone Subscribes
		.RefCount();    

http://stackoverflow.com/questions/10480542/why-shouldnt-i-implement-iobservablet
http://programmers.stackexchange.com/questions/246684/was-nets-iobservert-intended-for-subscribing-to-multiple-iobservables

https://blogs.endjin.com/2014/04/event-stream-manipulation-using-rx-part-1/



## Books

http://www.amazon.com/Introduction-to-Rx-ebook/dp/B008GM3YPM/
http://www.amazon.com/Programming-Reactive-Extensions-Jesse-Liberty/dp/1430237473/
https://www.manning.com/books/reactive-extensions-in-action
Reactive Extensions in Action - Permanent 39% discount for the Rx community 
with the code "dresherdoc"

https://github.com/tamirdresher/RxInAction
