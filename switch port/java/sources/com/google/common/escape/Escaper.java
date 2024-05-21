package com.google.common.escape;

import com.google.common.base.Function;
import com.google.errorprone.annotations.DoNotMock;

@DoNotMock("Use Escapers.nullEscaper() or another methods from the *Escapers classes")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class Escaper {
    private final Function<String, String> asFunction = new Function() { // from class: com.google.common.escape.Escaper$$ExternalSyntheticLambda0
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            return Escaper.this.escape((String) obj);
        }
    };

    public final Function<String, String> asFunction() {
        return this.asFunction;
    }

    public abstract String escape(String str);
}
