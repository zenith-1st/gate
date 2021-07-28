module dtb();
    reg ip, clk,rst;
    wire q,qb;
    integer i;

    always #5 clk = ~clk; //so T=10

    d d1(ip,clk,rst,q,qb);

    initial begin 
        clk=0;
        #2;
        for (i =0 ;i<2 ; i=i+1) begin
            ip <= i; #10;
            
        end

    end

    initial begin
        $dumpfile("dff.vcd");
        $dumpvars();
    end



endmodule