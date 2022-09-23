module fop_G(in,out);
    parameter n=4;
 
    //IO port declaration
    input [n-1:0]in;//Input must be wire
    output out;//Output can be wire or reg, default type is wire.

    //Save the output values from different gates.
    wire not_a,not_b,not_c,not_d;
    wire and0,and1,and2,and3,and4;

    //<gate><gate name>(output,input1,input2,...);
    not not_0(not_a,in[3]);
    not not_1(not_b,in[2]);
    not not_2(not_c,in[1]);
    not not_3(not_d,in[0]);

    and and_0(and0,not_a,not_b);
    and and_1(and1,not_a,in[0]);
    and and_2(and2,not_b,not_c,not_d);
    and and_3(and3,not_c,in[2],in[0]);
    and and_4(and4,not_b,in[1],in[0]);

    or or_0(out,and0,and1,and2,and3,and4);

endmodule

module fop_D(in,out);
    parameter n=4;

    input [n-1:0]in;
    output out;
    /*Be careful, "!" and "~" are different in Verilog.*/
    assign out=(!in[3]&!in[2])|(!in[3]&in[0])|(!in[2]&!in[1]&!in[0])|(in[2]&!in[1]&in[0])|(!in[2]&in[1]&in[0]);

endmodule

module fop_B(in,out);
    parameter n=4;
    
    input [n-1:0]in;
    output out;

    reg out;//It must be reg type because of using in always block.
    always@(*)begin
        case(in)
            0,1,2,3,5,7,8,11,13:begin
                out=1'b1;
            end
            default:begin
                out=1'b0;
            end
        endcase
    end

    /*
    or can write as
    always@(*)begin
        out=1'b0;
        case(in)
            0,1,2,3,5,7,8,11,13:begin
                out=1'b1;
            end
        endcase
    end
    */

endmodule
