module dlatch(d,en,rst,q,qb);
    input d,en,rst;
    output qb;
    output reg q;   //for memory we need reg
     
     assign qb = ~q;
    //here is latch so no need of clk

    always @(*) begin
        if (rst) begin
            q<=0;
        end
        
        else begin
            if (en) begin
                q<=d;
            end
        end
    end
endmodule