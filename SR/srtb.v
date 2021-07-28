module srtb();
    reg s,r,clk;
    wire q,qb;

    sr s1((s,r,q,qb,clk);

    always #5 clk=~clk;

    initial begin
        clk=0;

        repeat(2) begin
            for (i=0;i<4;i=i+1) begin
            {s,r} = i;
        end
            
        end        
    end

endmodule