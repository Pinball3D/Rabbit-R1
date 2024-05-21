package com.google.common.base;

import java.io.Serializable;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
final class FunctionalEquivalence<F, T> extends Equivalence<F> implements Serializable {
    private static final long serialVersionUID = 0;
    private final Function<? super F, ? extends T> function;
    private final Equivalence<T> resultEquivalence;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FunctionalEquivalence(Function<? super F, ? extends T> function, Equivalence<T> equivalence) {
        this.function = (Function) Preconditions.checkNotNull(function);
        this.resultEquivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
    }

    @Override // com.google.common.base.Equivalence
    protected boolean doEquivalent(F f, F f2) {
        return this.resultEquivalence.equivalent(this.function.apply(f), this.function.apply(f2));
    }

    @Override // com.google.common.base.Equivalence
    protected int doHash(F f) {
        return this.resultEquivalence.hash(this.function.apply(f));
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FunctionalEquivalence)) {
            return false;
        }
        FunctionalEquivalence functionalEquivalence = (FunctionalEquivalence) obj;
        return this.function.equals(functionalEquivalence.function) && this.resultEquivalence.equals(functionalEquivalence.resultEquivalence);
    }

    public int hashCode() {
        return Objects.hashCode(this.function, this.resultEquivalence);
    }

    public String toString() {
        String valueOf = String.valueOf(this.resultEquivalence);
        String valueOf2 = String.valueOf(this.function);
        return new StringBuilder(String.valueOf(valueOf).length() + 13 + String.valueOf(valueOf2).length()).append(valueOf).append(".onResultOf(").append(valueOf2).append(")").toString();
    }
}
