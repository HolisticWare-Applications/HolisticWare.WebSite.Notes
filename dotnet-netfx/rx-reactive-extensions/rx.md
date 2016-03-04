# RX Reactive Extensions

http://www.introtorx.com/

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
