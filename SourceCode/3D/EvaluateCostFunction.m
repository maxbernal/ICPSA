function cost = EvaluateCostFunction(A, B, T)
    Btrans = Rotation3(B, T(1), T(2), T(3));
    Btrans = DataCorrection(Btrans, A);
    cost = 100000000 * DetermineVolume(A, Btrans);
end