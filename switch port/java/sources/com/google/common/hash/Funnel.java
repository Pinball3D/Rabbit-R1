package com.google.common.hash;

import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;

@DoNotMock("Implement with a lambda")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface Funnel<T> extends Serializable {
    void funnel(@ParametricNullness T t, PrimitiveSink primitiveSink);
}
