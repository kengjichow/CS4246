(define (domain generator_linear)
(:requirements :fluents :durative-actions :duration-inequalities :adl :typing :timed-initial-literals :time)
(:types generator tank)
(:predicates (refueling ?g - generator) (generator-ran) (available ?t - tank) (on ?g - generator) )

(:functions (fuelLevel ?g - generator) (capacity ?g - generator) )

(:process generate
 :parameters (?g - generator) 
 :precondition (on ?g)
 :effect (decrease (fuelLevel ?g) (* #t 1))
)

(:durative-action refuel
 :parameters (?g - generator ?t - tank)
 :duration  (= ?duration  10) 
 :condition (and (at start (available ?t))
				  (over all (< (fuelLevel ?g) (capacity ?g))))
  :effect (and (at start (refueling ?g))
              (increase (fuelLevel ?g) (* #t 2))
			  (at start (not (available ?t)))
			  (at end (not (refueling ?g)))
          )
))
