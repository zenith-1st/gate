module sr(s,r,q,qb,clk);
    input s,r,clk;
    output reg q;
    output qb;

    assign qb = ~q;

    initial begin
        $dumpvar();
        $dumpfile("srout.vcd");
    end

    always @(posedge clk) begin

        case({s,r})
        2'b00 : q <= q;
        2'b01 : q <= 0;
        2'b10 : q <= 1;
        2'b11 : q <= 1'bx; //its not allowing so i commented
        
        endcase
    end 

endmodule