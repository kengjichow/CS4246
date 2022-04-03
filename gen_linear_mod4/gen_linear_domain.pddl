(define (domain generator_linear)
(:requirements :fluents :durative-actions :duration-inequalities :adl :typing :timed-initial-literals :time)
(:types generator tank)
(:predicates (refueling ?g - generator) (generator-ran) (available ?t - tank))

(:functions (fuelLevel ?g - generator) (capacity ?g - generator) (holes ?g - generator) )

(:durative-action generate
 :parameters (?g - generator)
 :duration (= ?duration  100)	 
 :condition (over all (>= (fuelLevel ?g) 0))
 :effect (and (decrease (fuelLevel ?g) (* #t 1))))

(:durative-action refuel
 :parameters (?g - generator ?t - tank)
 :duration  (= ?duration  10) 
 :condition (and (at start (available ?t))
		(over all (< (fuelLevel ?g) (capacity ?g))))
  :effect (and (at start (refueling ?g))
              (increase (fuelLevel ?g) (* #t 2))
          )
)

(:event leak
:parameters (?g - generator)
:precondition (and (> (holes ?g) 0) (>= (fuelLevel ?g) 20))
:effect (and (assign (fuelLevel ?g) (- (fuelLevel ?g) 20))
	(assign (holes ?g) 0))
)

)
