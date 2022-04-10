(define (problem run-generator2)
    (:domain generator_linear)
    (:objects gen - generator tank1 tank2 tank3 tank4 tank5 tank6 tank7 tank8 tank9 tank10 tank11 tank12 - tank)
    (:init
		(= (fuelLevel gen)  900)
		(= (capacity gen)  1000)
		(on gen)
		(at 1.0 (not (on gen)))
		(not (available tank1))
		(not (available tank2))
		(not (available tank3))
		(not (available tank4))
		(not (available tank5))
		(not (available tank6))
		(not (available tank7))
		(not (available tank8))
		(not (available tank9))
		(not (available tank10))
		(not (available tank11))
		(not (available tank12))
		(at 50.0 (available tank1))
		(at 51.0 (not (available tank1)))
		(at 100.0 (available tank2))
		(at 101.0 (not (available tank2)))
		(at 150.0 (available tank3))
		(at 151.0 (not (available tank3)))
		(at 200.0 (available tank3))
		(at 201.0 (not (available tank3)))
		(at 250.0 (available tank4))
		(at 251.0 (not (available tank4)))
		(at 300.0 (available tank5))
		(at 301.0 (not (available tank5)))
		(at 350.0 (available tank6))
		(at 351.0 (not (available tank6)))
		(at 400.0 (available tank7))
		(at 401.0 (not (available tank7)))
		(at 450.0 (available tank8))
		(at 451.0 (not (available tank8)))
		(at 500.0 (available tank9))
		(at 501.0 (not (available tank9)))
		(at 550.0 (available tank10))
		(at 551.0 (not (available tank10)))
		(at 600.0 (available tank11))
		(at 601.0 (not (available tank11)))
		(at 650.0 (available tank12))
		(at 651.0 (not (available tank12)))
    )  
	(:goal (generator-ran))
)