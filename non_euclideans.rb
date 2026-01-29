## Locale Reality Zones
def local_reality_zone(a, b, y1, x1, y2, x2)
  "#{a} is a local reality zone of #{b}, with #{a} having a local y of #{y1} and x of #{x1}. But #{b} itself only has a y of #{y2} and an x of #{x2}."
end

def non_euclid(a, b)
  "You can fit #{a} inside of #{b} because its exact dimensions aren't defined."
end

def non_uniform_anomaly(a, b, c, d, e, f)
  "You can fit #{a} inside of #{b} although top floors y is #{c}, and the top floors x is #{d}. The bottom floor is y of #{e} and x of #{f}."
end

puts "SCHOOLYARD AND TREE"
2.times do
  get_statistics(:framed_john,    tree_yard(plant_tree("Tree", "Schoolyard"), talk_to_tree("John", "Tree"), plant_evidence("Tree", "John", "Bethany")),
                 :framed_bethany, tree_yard(plant_tree("Tree", "Schoolyard"), talk_to_tree("John", "Tree"), plant_evidence("Tree", "Bethany", "John")),
                 :framed_tree,    tree_yard(plant_tree("Tree", "Schoolyard"), talk_to_tree("John", "Tree"), plant_evidence("Bethany", "John", "Tree")))

  dynamic_reward_allocation
end

puts "NON EUCLIDEAN SPACES"
y1_simulation = ( 100 * $current_probability ) * 640
y1_simulation = y1_simulation.modulo(640).to_i

x1_simulation = ( 100 * $current_probability ) * 480
x1_simulation = x1_simulation.modulo(480).to_i

y2_simulation = ( 100 * $current_probability ) * 640
y2_simulation = y2_simulation.modulo(640).to_i

x2_simulation = ( 100 * $current_probability ) * 480
x2_simulation = x2_simulation.modulo(480).to_i

2.times do
  get_statistics(:johns_reality, local_reality_zone("Airport", "Beach House",            y1_simulation, x1_simulation, y2_simulation, x2_simulation),                                                        
                 :bathanys_reality, local_reality_zone("Musical Theatre", "Beach House", y1_simulation, x1_simulation, y2_simulation, x2_simulation),                                                        
                 :trees_reality, local_reality_zone("Bar And Grill", "Basement",         y1_simulation, x1_simulation, y2_simulation, x2_simulation))
                 
                 dynamic_reward_allocation
end
