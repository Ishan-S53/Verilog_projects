module seven_segment_decoder_tb;
    reg [3:0] bin;
    wire [6:0] seg;

    seven_segment_decoder uut (
        .bin(bin),
        .seg(seg)
    );

    initial begin
        // Test cases
        bin = 4'b0000; #10; // Display 0
        bin = 4'b0001; #10; // Display 1
        bin = 4'b0010; #10; // Display 2
        bin = 4'b0011; #10; // Display 3
        bin = 4'b0100; #10; // Display 4
        bin = 4'b0101; #10; // Display 5
        bin = 4'b0110; #10; // Display 6
        bin = 4'b0111; #10; // Display 7
        bin = 4'b1000; #10; // Display 8
        bin = 4'b1001; #10; // Display 9
        #50 $stop;
    end
endmodule
