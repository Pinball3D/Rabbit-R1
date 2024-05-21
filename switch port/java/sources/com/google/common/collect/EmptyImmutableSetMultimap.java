package com.google.common.collect;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class EmptyImmutableSetMultimap extends ImmutableSetMultimap<Object, Object> {
    static final EmptyImmutableSetMultimap INSTANCE = new EmptyImmutableSetMultimap();
    private static final long serialVersionUID = 0;

    private Object readResolve() {
        return INSTANCE;
    }

    private EmptyImmutableSetMultimap() {
        super(ImmutableMap.of(), 0, null);
    }
}
