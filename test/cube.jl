@testset "Check consistency of LRSInequalityMatrix representation" begin
    A = [1 0; 0 1; -1 0; 0 -1]
    b = [1, 1, 0, 0]
    ine = SimpleHRepresentation(A, b)
    inem1 = LRSMatrix(ine)
    #setdebug(poly1, true)
    ine1  = SimpleHRepresentation{2,Int}(inem1)
    @test ine.A == ine1.A
    @test ine.b == ine1.b
    @test ine.linset == ine1.linset
end
