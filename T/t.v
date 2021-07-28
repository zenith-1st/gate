module t(ip,clk,rst,q,qb);
    input clk,rst,ip;
    output reg q;
    output qb;

    assign qb = ~q;

    //now @always() as ff is seq cir

    always @(posedge clk) begin
        if(rst) begin
            q<=0;
        end

        else begin
           q = t ? ~q:q;
        end
    end



endmodule