package androidx.compose.ui.text.android;

import io.sentry.protocol.SentryThread;
import java.text.CharacterIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CharSequenceCharacterIterator.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\f\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\u0005H\u0016J\b\u0010\u000f\u001a\u00020\u0005H\u0016J\b\u0010\u0010\u001a\u00020\u0005H\u0016J\b\u0010\u0011\u001a\u00020\fH\u0016J\t\u0010\u0012\u001a\u00020\fH\u0096\u0002J\b\u0010\u0013\u001a\u00020\fH\u0016J\u0010\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;", "Ljava/text/CharacterIterator;", "charSequence", "", "start", "", "end", "(Ljava/lang/CharSequence;II)V", "index", "clone", "", SentryThread.JsonKeys.CURRENT, "", "first", "getBeginIndex", "getEndIndex", "getIndex", "last", "next", "previous", "setIndex", "position", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CharSequenceCharacterIterator implements CharacterIterator {
    private final CharSequence charSequence;
    private final int end;
    private int index;
    private final int start;

    @Override // java.text.CharacterIterator
    public int getBeginIndex() {
        return this.start;
    }

    @Override // java.text.CharacterIterator
    public int getEndIndex() {
        return this.end;
    }

    @Override // java.text.CharacterIterator
    public int getIndex() {
        return this.index;
    }

    public CharSequenceCharacterIterator(CharSequence charSequence, int i, int i2) {
        Intrinsics.checkNotNullParameter(charSequence, "charSequence");
        this.charSequence = charSequence;
        this.start = i;
        this.end = i2;
        this.index = i;
    }

    @Override // java.text.CharacterIterator
    public char first() {
        this.index = this.start;
        return current();
    }

    @Override // java.text.CharacterIterator
    public char last() {
        int i = this.start;
        int i2 = this.end;
        if (i == i2) {
            this.index = i2;
            return CharCompanionObject.MAX_VALUE;
        }
        int i3 = i2 - 1;
        this.index = i3;
        return this.charSequence.charAt(i3);
    }

    @Override // java.text.CharacterIterator
    public char current() {
        int i = this.index;
        return i == this.end ? CharCompanionObject.MAX_VALUE : this.charSequence.charAt(i);
    }

    @Override // java.text.CharacterIterator
    public char next() {
        int i = this.index + 1;
        this.index = i;
        int i2 = this.end;
        if (i < i2) {
            return this.charSequence.charAt(i);
        }
        this.index = i2;
        return CharCompanionObject.MAX_VALUE;
    }

    @Override // java.text.CharacterIterator
    public char previous() {
        int i = this.index;
        if (i <= this.start) {
            return CharCompanionObject.MAX_VALUE;
        }
        int i2 = i - 1;
        this.index = i2;
        return this.charSequence.charAt(i2);
    }

    @Override // java.text.CharacterIterator
    public char setIndex(int position) {
        int i = this.start;
        if (position <= this.end && i <= position) {
            this.index = position;
            return current();
        }
        throw new IllegalArgumentException("invalid position");
    }

    @Override // java.text.CharacterIterator
    public Object clone() {
        try {
            Object clone = super.clone();
            Intrinsics.checkNotNullExpressionValue(clone, "{\n            @Suppress(…  super.clone()\n        }");
            return clone;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }
}
