# requires <https://github.com/Ninjaclasher/testcase-generator>
import random

from testcase_generator import Constraint, Case, Batch, Generator, ConstraintParser, GraphGenerator

"""
 | initialize(self, N, graph_type, *args, **kwargs)
 |     N: number of nodes
 |     graph_type:
 |              1: normal graph
 |              2: connected graph
 |              3: complete graph
 |              4: circle
 |              10: line
 |              11: normal tree
 |              12: tree, all nodes connected to one node
 |              13: caterpillar tree
 |              14: binary tree
 |     kwargs:
 |         M: number of edges, leave blank if it is a tree
 |         duplicates: allow for duplicate edges between nodes
 |         self_loops: allow for edges between the same node
"""

def set_constraints(self):
    ## Write main constraints here ##
    self.N = Constraint(1, 10**3)
    self.ee = GraphGenerator()
    self.E = Constraint(generator=self.ee.next_edge)

def generate_input(self, **kwargs):
    ## Write generator here ##
    n = self.N.next
    yield n
    self.ee.initialize(n, 11)
    for i in range(n-1):
        yield self.E.next

Case.SET_CONSTRAINTS = set_constraints
Case.SET_INPUT = generate_input


conf = """
- batch: 1
  constraints: {}
  cases:
    - constraints: {}
      repeat: 1
"""

p = ConstraintParser(data=conf)
p.parse()

batches = p.batches

Generator(batches=batches, exe="./__FILE_NAME.run").start()
