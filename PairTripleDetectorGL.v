//========================================================================
// PairTripleDetectorGL
//========================================================================

`ifndef PAIR_TRIPLE_DETECTOR_GL_V
`define PAIR_TRIPLE_DETECTOR_GL_V

module PairTripleDetectorGL
(
  input  wire in0,
  input  wire in1,
  input  wire in2,
  output wire out
);

  wire w, y, x;

  or ( w,   in0, in1 );
  and( y,   w,   in2 );
  and( x,   in0, in1 );
  or ( out, y,   x );
  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement pair/triple detector using explicit gate-level modeling
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

endmodule

`endif /* PAIR_TRIPLE_DETECTOR_GL_V */

