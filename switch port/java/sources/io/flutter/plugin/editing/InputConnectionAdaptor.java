package io.flutter.plugin.editing;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.DynamicLayout;
import android.text.Editable;
import android.text.Layout;
import android.text.Selection;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputContentInfo;
import android.view.inputmethod.InputMethodManager;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.systemchannels.TextInputChannel;
import io.flutter.plugin.editing.ListenableEditingState;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import kotlinx.coroutines.DebugKt;

/* loaded from: classes3.dex */
public class InputConnectionAdaptor extends BaseInputConnection implements ListenableEditingState.EditingStateWatcher {
    private static final String TAG = "InputConnectionAdaptor";
    private int batchEditNestDepth;
    private FlutterTextUtils flutterTextUtils;
    private final KeyboardDelegate keyboardDelegate;
    private final int mClient;
    private CursorAnchorInfo.Builder mCursorAnchorInfoBuilder;
    private final ListenableEditingState mEditable;
    private final EditorInfo mEditorInfo;
    private ExtractedTextRequest mExtractRequest;
    private ExtractedText mExtractedText;
    private final View mFlutterView;
    private InputMethodManager mImm;
    private final Layout mLayout;
    private boolean mMonitorCursorUpdate;
    private final TextInputChannel textInputChannel;

    /* loaded from: classes3.dex */
    public interface KeyboardDelegate {
        boolean handleEvent(KeyEvent keyEvent);
    }

    @Override // android.view.inputmethod.BaseInputConnection
    public Editable getEditable() {
        return this.mEditable;
    }

    public InputConnectionAdaptor(View view, int i, TextInputChannel textInputChannel, KeyboardDelegate keyboardDelegate, ListenableEditingState listenableEditingState, EditorInfo editorInfo, FlutterJNI flutterJNI) {
        super(view, true);
        this.mMonitorCursorUpdate = false;
        this.mExtractedText = new ExtractedText();
        this.batchEditNestDepth = 0;
        this.mFlutterView = view;
        this.mClient = i;
        this.textInputChannel = textInputChannel;
        this.mEditable = listenableEditingState;
        listenableEditingState.addEditingStateListener(this);
        this.mEditorInfo = editorInfo;
        this.keyboardDelegate = keyboardDelegate;
        this.flutterTextUtils = new FlutterTextUtils(flutterJNI);
        this.mLayout = new DynamicLayout(listenableEditingState, new TextPaint(), Integer.MAX_VALUE, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        this.mImm = (InputMethodManager) view.getContext().getSystemService("input_method");
    }

    public InputConnectionAdaptor(View view, int i, TextInputChannel textInputChannel, KeyboardDelegate keyboardDelegate, ListenableEditingState listenableEditingState, EditorInfo editorInfo) {
        this(view, i, textInputChannel, keyboardDelegate, listenableEditingState, editorInfo, new FlutterJNI());
    }

    private ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest) {
        this.mExtractedText.startOffset = 0;
        this.mExtractedText.partialStartOffset = -1;
        this.mExtractedText.partialEndOffset = -1;
        this.mExtractedText.selectionStart = this.mEditable.getSelectionStart();
        this.mExtractedText.selectionEnd = this.mEditable.getSelectionEnd();
        this.mExtractedText.text = (extractedTextRequest == null || (extractedTextRequest.flags & 1) == 0) ? this.mEditable.toString() : this.mEditable;
        return this.mExtractedText;
    }

    private CursorAnchorInfo getCursorAnchorInfo() {
        CursorAnchorInfo.Builder builder = this.mCursorAnchorInfoBuilder;
        if (builder == null) {
            this.mCursorAnchorInfoBuilder = new CursorAnchorInfo.Builder();
        } else {
            builder.reset();
        }
        this.mCursorAnchorInfoBuilder.setSelectionRange(this.mEditable.getSelectionStart(), this.mEditable.getSelectionEnd());
        int composingStart = this.mEditable.getComposingStart();
        int composingEnd = this.mEditable.getComposingEnd();
        if (composingStart >= 0 && composingEnd > composingStart) {
            this.mCursorAnchorInfoBuilder.setComposingText(composingStart, this.mEditable.toString().subSequence(composingStart, composingEnd));
        } else {
            this.mCursorAnchorInfoBuilder.setComposingText(-1, "");
        }
        return this.mCursorAnchorInfoBuilder.build();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        this.mEditable.beginBatchEdit();
        this.batchEditNestDepth++;
        return super.beginBatchEdit();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        boolean endBatchEdit = super.endBatchEdit();
        this.batchEditNestDepth--;
        this.mEditable.endBatchEdit();
        return endBatchEdit;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i) {
        return super.commitText(charSequence, i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i, int i2) {
        if (this.mEditable.getSelectionStart() == -1) {
            return true;
        }
        return super.deleteSurroundingText(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        return super.deleteSurroundingTextInCodePoints(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i, int i2) {
        return super.setComposingRegion(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i) {
        boolean composingText;
        beginBatchEdit();
        if (charSequence.length() == 0) {
            composingText = super.commitText(charSequence, i);
        } else {
            composingText = super.setComposingText(charSequence, i);
        }
        endBatchEdit();
        return composingText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        return super.finishComposingText();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i) {
        boolean z = (i & 1) != 0;
        if (z == (this.mExtractRequest == null)) {
            Log.d(TAG, "The input method toggled text monitoring ".concat(z ? DebugKt.DEBUG_PROPERTY_VALUE_ON : DebugKt.DEBUG_PROPERTY_VALUE_OFF));
        }
        this.mExtractRequest = z ? extractedTextRequest : null;
        return getExtractedText(extractedTextRequest);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean requestCursorUpdates(int i) {
        if ((i & 1) != 0) {
            this.mImm.updateCursorAnchorInfo(this.mFlutterView, getCursorAnchorInfo());
        }
        boolean z = (i & 2) != 0;
        if (z != this.mMonitorCursorUpdate) {
            Log.d(TAG, "The input method toggled cursor monitoring ".concat(z ? DebugKt.DEBUG_PROPERTY_VALUE_ON : DebugKt.DEBUG_PROPERTY_VALUE_OFF));
        }
        this.mMonitorCursorUpdate = z;
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i) {
        return super.clearMetaKeyStates(i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public void closeConnection() {
        super.closeConnection();
        this.mEditable.removeEditingStateListener(this);
        while (this.batchEditNestDepth > 0) {
            endBatchEdit();
            this.batchEditNestDepth--;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setSelection(int i, int i2) {
        beginBatchEdit();
        boolean selection = super.setSelection(i, i2);
        endBatchEdit();
        return selection;
    }

    private static int clampIndexToEditable(int i, Editable editable) {
        int max = Math.max(0, Math.min(editable.length(), i));
        if (max != i) {
            Log.d("flutter", "Text selection index was clamped (" + i + "->" + max + ") to remain in bounds. This may not be your fault, as some keyboards may select outside of bounds.");
        }
        return max;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        return this.keyboardDelegate.handleEvent(keyEvent);
    }

    public boolean handleKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            if (keyEvent.getKeyCode() == 21) {
                return handleHorizontalMovement(true, keyEvent.isShiftPressed());
            }
            if (keyEvent.getKeyCode() == 22) {
                return handleHorizontalMovement(false, keyEvent.isShiftPressed());
            }
            if (keyEvent.getKeyCode() == 19) {
                return handleVerticalMovement(true, keyEvent.isShiftPressed());
            }
            if (keyEvent.getKeyCode() == 20) {
                return handleVerticalMovement(false, keyEvent.isShiftPressed());
            }
            if ((keyEvent.getKeyCode() == 66 || keyEvent.getKeyCode() == 160) && (this.mEditorInfo.inputType & 131072) == 0) {
                performEditorAction(this.mEditorInfo.imeOptions & 255);
                return true;
            }
            int selectionStart = Selection.getSelectionStart(this.mEditable);
            int selectionEnd = Selection.getSelectionEnd(this.mEditable);
            int unicodeChar = keyEvent.getUnicodeChar();
            if (selectionStart >= 0 && selectionEnd >= 0 && unicodeChar != 0) {
                int min = Math.min(selectionStart, selectionEnd);
                int max = Math.max(selectionStart, selectionEnd);
                beginBatchEdit();
                if (min != max) {
                    this.mEditable.delete(min, max);
                }
                this.mEditable.insert(min, (CharSequence) String.valueOf((char) unicodeChar));
                int i = min + 1;
                setSelection(i, i);
                endBatchEdit();
                return true;
            }
        }
        return false;
    }

    private boolean handleHorizontalMovement(boolean z, boolean z2) {
        int min;
        int selectionStart = Selection.getSelectionStart(this.mEditable);
        int selectionEnd = Selection.getSelectionEnd(this.mEditable);
        if (selectionStart < 0 || selectionEnd < 0) {
            return false;
        }
        if (z) {
            min = Math.max(this.flutterTextUtils.getOffsetBefore(this.mEditable, selectionEnd), 0);
        } else {
            min = Math.min(this.flutterTextUtils.getOffsetAfter(this.mEditable, selectionEnd), this.mEditable.length());
        }
        if (selectionStart == selectionEnd && !z2) {
            setSelection(min, min);
            return true;
        }
        setSelection(selectionStart, min);
        return true;
    }

    private boolean handleVerticalMovement(boolean z, boolean z2) {
        int selectionStart = Selection.getSelectionStart(this.mEditable);
        int selectionEnd = Selection.getSelectionEnd(this.mEditable);
        boolean z3 = false;
        if (selectionStart < 0 || selectionEnd < 0) {
            return false;
        }
        if (selectionStart == selectionEnd && !z2) {
            z3 = true;
        }
        beginBatchEdit();
        if (z3) {
            if (z) {
                Selection.moveUp(this.mEditable, this.mLayout);
            } else {
                Selection.moveDown(this.mEditable, this.mLayout);
            }
            int selectionStart2 = Selection.getSelectionStart(this.mEditable);
            setSelection(selectionStart2, selectionStart2);
        } else {
            if (z) {
                Selection.extendUp(this.mEditable, this.mLayout);
            } else {
                Selection.extendDown(this.mEditable, this.mLayout);
            }
            setSelection(Selection.getSelectionStart(this.mEditable), Selection.getSelectionEnd(this.mEditable));
        }
        endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i) {
        beginBatchEdit();
        boolean doPerformContextMenuAction = doPerformContextMenuAction(i);
        endBatchEdit();
        return doPerformContextMenuAction;
    }

    private boolean doPerformContextMenuAction(int i) {
        if (i == 16908319) {
            setSelection(0, this.mEditable.length());
            return true;
        }
        if (i == 16908320) {
            int selectionStart = Selection.getSelectionStart(this.mEditable);
            int selectionEnd = Selection.getSelectionEnd(this.mEditable);
            if (selectionStart != selectionEnd) {
                int min = Math.min(selectionStart, selectionEnd);
                int max = Math.max(selectionStart, selectionEnd);
                ((ClipboardManager) this.mFlutterView.getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text label?", this.mEditable.subSequence(min, max)));
                this.mEditable.delete(min, max);
                setSelection(min, min);
            }
            return true;
        }
        if (i == 16908321) {
            int selectionStart2 = Selection.getSelectionStart(this.mEditable);
            int selectionEnd2 = Selection.getSelectionEnd(this.mEditable);
            if (selectionStart2 != selectionEnd2) {
                ((ClipboardManager) this.mFlutterView.getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text label?", this.mEditable.subSequence(Math.min(selectionStart2, selectionEnd2), Math.max(selectionStart2, selectionEnd2))));
            }
            return true;
        }
        if (i != 16908322) {
            return false;
        }
        ClipData primaryClip = ((ClipboardManager) this.mFlutterView.getContext().getSystemService("clipboard")).getPrimaryClip();
        if (primaryClip != null) {
            CharSequence coerceToText = primaryClip.getItemAt(0).coerceToText(this.mFlutterView.getContext());
            int max2 = Math.max(0, Selection.getSelectionStart(this.mEditable));
            int max3 = Math.max(0, Selection.getSelectionEnd(this.mEditable));
            int min2 = Math.min(max2, max3);
            int max4 = Math.max(max2, max3);
            if (min2 != max4) {
                this.mEditable.delete(min2, max4);
            }
            this.mEditable.insert(min2, coerceToText);
            int length = min2 + coerceToText.length();
            setSelection(length, length);
        }
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        this.textInputChannel.performPrivateCommand(this.mClient, str, bundle);
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i) {
        if (i == 0) {
            this.textInputChannel.unspecifiedAction(this.mClient);
        } else if (i == 1) {
            this.textInputChannel.newline(this.mClient);
        } else if (i == 2) {
            this.textInputChannel.go(this.mClient);
        } else if (i == 3) {
            this.textInputChannel.search(this.mClient);
        } else if (i == 4) {
            this.textInputChannel.send(this.mClient);
        } else if (i == 5) {
            this.textInputChannel.next(this.mClient);
        } else if (i == 7) {
            this.textInputChannel.previous(this.mClient);
        } else {
            this.textInputChannel.done(this.mClient);
        }
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        if ((i & 1) != 0) {
            try {
                inputContentInfo.requestPermission();
                if (inputContentInfo.getDescription().getMimeTypeCount() > 0) {
                    inputContentInfo.requestPermission();
                    Uri contentUri = inputContentInfo.getContentUri();
                    String mimeType = inputContentInfo.getDescription().getMimeType(0);
                    Context context = this.mFlutterView.getContext();
                    if (contentUri != null) {
                        try {
                            InputStream openInputStream = context.getContentResolver().openInputStream(contentUri);
                            if (openInputStream != null) {
                                byte[] readStreamFully = readStreamFully(openInputStream, 65536);
                                HashMap hashMap = new HashMap();
                                hashMap.put("mimeType", mimeType);
                                hashMap.put("data", readStreamFully);
                                hashMap.put("uri", contentUri.toString());
                                this.textInputChannel.commitContent(this.mClient, hashMap);
                                inputContentInfo.releasePermission();
                                return true;
                            }
                        } catch (FileNotFoundException unused) {
                            inputContentInfo.releasePermission();
                            return false;
                        }
                    }
                    inputContentInfo.releasePermission();
                }
            } catch (Exception unused2) {
            }
        }
        return false;
    }

    private byte[] readStreamFully(InputStream inputStream, int i) {
        int i2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[i];
        while (true) {
            try {
                i2 = inputStream.read(bArr);
            } catch (IOException unused) {
                i2 = -1;
            }
            if (i2 != -1) {
                byteArrayOutputStream.write(bArr, 0, i2);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    @Override // io.flutter.plugin.editing.ListenableEditingState.EditingStateWatcher
    public void didChangeEditingState(boolean z, boolean z2, boolean z3) {
        this.mImm.updateSelection(this.mFlutterView, this.mEditable.getSelectionStart(), this.mEditable.getSelectionEnd(), this.mEditable.getComposingStart(), this.mEditable.getComposingEnd());
        ExtractedTextRequest extractedTextRequest = this.mExtractRequest;
        if (extractedTextRequest != null) {
            this.mImm.updateExtractedText(this.mFlutterView, extractedTextRequest.token, getExtractedText(this.mExtractRequest));
        }
        if (this.mMonitorCursorUpdate) {
            this.mImm.updateCursorAnchorInfo(this.mFlutterView, getCursorAnchorInfo());
        }
    }
}
