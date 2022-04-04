(define (domain generator2)
(:requirements :fluents :durative-actions :duration-inequalities :time :adl :timed-initial-literals :typing)
(:types generator tank)
(:predicates (refueling ?g - generator) (complete ?g - generator) (generator-ran) (available ?t - tank))

(:functions (fuelLevel ?g - generator) (capacity ?g - generator) )

(:durative-action generate
 :parameters (?g - generator)
 :duration (= ?duration 100)
 :condition (and (over all (>= (fuelLevel ?g) 0))
		(at start (= (fuelLevel ?g) 90)))
 :effect (and (decrease (fuelLevel ?g) (* #t 1))
			  (at end (complete ?g))))

(:durative-action refuel
 :parameters (?g - generator ?t - tank)
 :duration  (= ?duration 10) 
 :condition (and ;(at start (not (refueling ?g)) )
				  (at start (available ?t))
				  (over all (< (fuelLevel ?g) (capacity ?g))))
 :effect (and (at start (refueling ?g))
              (increase (fuelLevel ?g) (* #t 20))
			  (at start (not (available ?t)))
			  (at end (not (refueling ?g)))
			(at end (available ?t))
          ))
)