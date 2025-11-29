module comparador(
    input  [3:0] tentativaA,
    input  [3:0] senhaA,
    input  [2:0] tentativaB,
    input  [2:0] senhaB,
    input        modoB,   // 0 = comparando A, 1 = comparando B
    output reg [1:0] resultado
);

    always @(*) begin
        if (!modoB) begin
            // Comparando senha A
            if (tentativaA > senhaA)
                resultado = 2'b01; // maior
            else if (tentativaA < senhaA)
                resultado = 2'b00; // menor
            else
                resultado = 2'b10; // igual
        end
        else begin
            // Comparando senha B
            if (tentativaB > senhaB)
                resultado = 2'b01;
            else if (tentativaB < senhaB)
                resultado = 2'b00;
            else
                resultado = 2'b10;
        end
    end

endmodule
