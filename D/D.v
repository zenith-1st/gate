module d(ip,clk,rst,q,qb);
    input ip, clk, rst;
    output reg q;
    output qb;

    assign qb = ~q;

    //now ff so @always(clk)

    always @(posedge clk) begin
        if(rst) begin
            q<=0;
        end
        else begin
            q<=ip;
        end
    end

endmodule