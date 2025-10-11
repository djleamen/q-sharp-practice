
import Microsoft.Quantum.Diagnostics.*;

operation Main() : (Result, Result) {
        use (q1, q2) = (Qubit(), Qubit()); // Allocate two qubits, q1 and q2, in the 0 state.

        H(q1);  // Put q1 into an even superposition.

        CNOT(q1, q2); // Entangle q1 and q2.

        Message("State after entanglement:");
        DumpMachine(); // Dump the state of the entire machine.

        let (m1, m2) = (M(q1), M(q2)); // Measure q1 and q2 and store the results in m1 and m2.

        ResetAll([q1, q2]); // Reset the qubits to the 0 state before releasing them.

        return (m1, m2); // Return the measurement results.
}