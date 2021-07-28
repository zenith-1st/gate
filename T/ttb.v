module ttb();
reg ip,clk,rst;
wire q, qb;
integer i;

always #5 clk = ~clk;

t t1(ip,clk,rst,q,qb);

initial begin
    clk=0;
    #2
    repeat(2) begin
        for(i=0;i<2;i=i+1) begin
            t<=i;
        end
    end
end

initial begin
    $dumpfile("t.vcd");
    $dumpvars();
end

endmodule