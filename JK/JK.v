module jk(j,k,clk,rst,q);
    input clk,j,k,rst;
    output reg q;


    //now as we know its a ff so there must be posedge and <=

    always @(posedge clk) begin
            case({j,k}) 
                2'b00 : q<= q;
                2'b01 : q<= 0;
                2'b10 : q<= 1;
                2'b11 : q<=~q;
            endcase   
    end
endmodule
