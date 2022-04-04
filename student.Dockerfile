#Using the Planner image on my repo to get the base image 
FROM adamfgreen/aip2020:latest
#Copy the input folder into the container and call it input e.g.
# ./input on your computer > /input on the container
COPY . /src
#Set the working directory to the input folder
WORKDIR /src

#Run the domain.pddl and problem.pddl in this folder on optic
CMD bash time.sh SMTPlan gen_linear_mod4/gen_linear_domain.pddl gen_linear_mod4/gen_linear_prob01.pddl

# CMD bash time.sh optic gen_linear/gen_linear_domain.pddl gen_linear/gen_linear_prob01.pddl

# CMD bash time.sh SMTPlan solar_rover/solarrover.pddl solar_rover/prob01.pddl

#Other software available is
# - fd
# - metricff
# - SMTPlan
# - Validate
# - enhsp
# Note all program names are case sensitive and as stated above
