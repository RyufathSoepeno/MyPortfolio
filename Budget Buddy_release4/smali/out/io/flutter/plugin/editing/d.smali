.class public Lio/flutter/plugin/editing/d;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/editing/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:I

.field private final c:Lr0/q;

.field private final d:Lio/flutter/plugin/editing/e;

.field private final e:Landroid/view/inputmethod/EditorInfo;

.field private f:Landroid/view/inputmethod/ExtractedTextRequest;

.field private g:Z

.field private h:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field private i:Landroid/view/inputmethod/ExtractedText;

.field private j:Landroid/view/inputmethod/InputMethodManager;

.field private final k:Landroid/text/Layout;

.field private l:Lio/flutter/plugin/editing/a;

.field private final m:Lio/flutter/plugin/editing/d$a;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/view/View;ILr0/q;Lio/flutter/plugin/editing/d$a;Lio/flutter/plugin/editing/e;Landroid/view/inputmethod/EditorInfo;)V
    .registers 15

    new-instance v7, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v7}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lio/flutter/plugin/editing/d;-><init>(Landroid/view/View;ILr0/q;Lio/flutter/plugin/editing/d$a;Lio/flutter/plugin/editing/e;Landroid/view/inputmethod/EditorInfo;Lio/flutter/embedding/engine/FlutterJNI;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILr0/q;Lio/flutter/plugin/editing/d$a;Lio/flutter/plugin/editing/e;Landroid/view/inputmethod/EditorInfo;Lio/flutter/embedding/engine/FlutterJNI;)V
    .registers 16

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/editing/d;->g:Z

    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iput-object v1, p0, Lio/flutter/plugin/editing/d;->i:Landroid/view/inputmethod/ExtractedText;

    iput v0, p0, Lio/flutter/plugin/editing/d;->n:I

    iput-object p1, p0, Lio/flutter/plugin/editing/d;->a:Landroid/view/View;

    iput p2, p0, Lio/flutter/plugin/editing/d;->b:I

    iput-object p3, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iput-object p5, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {p5, p0}, Lio/flutter/plugin/editing/e;->a(Lio/flutter/plugin/editing/e$b;)V

    iput-object p6, p0, Lio/flutter/plugin/editing/d;->e:Landroid/view/inputmethod/EditorInfo;

    iput-object p4, p0, Lio/flutter/plugin/editing/d;->m:Lio/flutter/plugin/editing/d$a;

    new-instance p2, Lio/flutter/plugin/editing/a;

    invoke-direct {p2, p7}, Lio/flutter/plugin/editing/a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p2, p0, Lio/flutter/plugin/editing/d;->l:Lio/flutter/plugin/editing/a;

    new-instance p2, Landroid/text/DynamicLayout;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v3, 0x7fffffff

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p5

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p2, p0, Lio/flutter/plugin/editing/d;->k:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lio/flutter/plugin/editing/d;->j:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private b(I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x102001f

    if-ne p1, v2, :cond_11

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lio/flutter/plugin/editing/d;->setSelection(II)Z

    return v0

    :cond_11
    const v2, 0x1020020

    const-string v3, "text label?"

    const-string v4, "clipboard"

    if-ne p1, v2, :cond_52

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq p1, v1, :cond_51

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v1, v2, p1}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v5, p0, Lio/flutter/plugin/editing/d;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    invoke-static {v3, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v1, v2, p1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v2, v2}, Lio/flutter/plugin/editing/d;->setSelection(II)Z

    :cond_51
    return v0

    :cond_52
    const v2, 0x1020021

    if-ne p1, v2, :cond_87

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq p1, v1, :cond_86

    iget-object v2, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v2, v5, p1}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_86
    return v0

    :cond_87
    const v2, 0x1020022

    if-ne p1, v2, :cond_dd

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_dc

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    iget-object v2, p0, Lio/flutter/plugin/editing/d;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v2, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eq v3, v1, :cond_cf

    iget-object v2, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v2, v3, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_cf
    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v1, v3, p1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {p0, v3, v3}, Lio/flutter/plugin/editing/d;->setSelection(II)Z

    :cond_dc
    return v0

    :cond_dd
    return v1
.end method

.method private c()Landroid/view/inputmethod/CursorAnchorInfo;
    .registers 5

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->h:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-nez v0, :cond_c

    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/editing/d;->h:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    :goto_f
    iget-object v0, p0, Lio/flutter/plugin/editing/d;->h:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/e;->i()I

    move-result v1

    iget-object v2, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v2}, Lio/flutter/plugin/editing/e;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/e;->g()I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/e;->f()I

    move-result v1

    if-ltz v0, :cond_40

    if-le v1, v0, :cond_40

    iget-object v2, p0, Lio/flutter/plugin/editing/d;->h:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v3, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v3}, Lio/flutter/plugin/editing/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_48

    :cond_40
    iget-object v0, p0, Lio/flutter/plugin/editing/d;->h:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :goto_48
    iget-object v0, p0, Lio/flutter/plugin/editing/d;->h:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;
    .registers 4

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->i:Landroid/view/inputmethod/ExtractedText;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/e;->i()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->i:Landroid/view/inputmethod/ExtractedText;

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/e;->h()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->i:Landroid/view/inputmethod/ExtractedText;

    if-eqz p1, :cond_2a

    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_27

    goto :goto_2a

    :cond_27
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    goto :goto_30

    :cond_2a
    :goto_2a
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/e;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_30
    iput-object p1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->i:Landroid/view/inputmethod/ExtractedText;

    return-object p1
.end method

.method private e(ZZ)Z
    .registers 7

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_43

    if-gez v1, :cond_12

    goto :goto_43

    :cond_12
    if-eqz p1, :cond_21

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->l:Lio/flutter/plugin/editing/a;

    iget-object v3, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {p1, v3, v1}, Lio/flutter/plugin/editing/a;->b(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_33

    :cond_21
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->l:Lio/flutter/plugin/editing/a;

    iget-object v3, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {p1, v3, v1}, Lio/flutter/plugin/editing/a;->a(Ljava/lang/CharSequence;I)I

    move-result p1

    iget-object v3, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_33
    const/4 v3, 0x1

    if-ne v0, v1, :cond_39

    if-nez p2, :cond_39

    const/4 v2, 0x1

    :cond_39
    if-eqz v2, :cond_3f

    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/d;->setSelection(II)Z

    goto :goto_42

    :cond_3f
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/editing/d;->setSelection(II)Z

    :goto_42
    return v3

    :cond_43
    :goto_43
    return v2
.end method

.method private g(ZZ)Z
    .registers 7

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_5c

    if-gez v1, :cond_12

    goto :goto_5c

    :cond_12
    const/4 v3, 0x1

    if-ne v0, v1, :cond_18

    if-nez p2, :cond_18

    const/4 v2, 0x1

    :cond_18
    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->beginBatchEdit()Z

    if-eqz v2, :cond_38

    if-eqz p1, :cond_27

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    iget-object p2, p0, Lio/flutter/plugin/editing/d;->k:Landroid/text/Layout;

    invoke-static {p1, p2}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_2e

    :cond_27
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    iget-object p2, p0, Lio/flutter/plugin/editing/d;->k:Landroid/text/Layout;

    invoke-static {p1, p2}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    :goto_2e
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/d;->setSelection(II)Z

    goto :goto_58

    :cond_38
    if-eqz p1, :cond_42

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    iget-object p2, p0, Lio/flutter/plugin/editing/d;->k:Landroid/text/Layout;

    invoke-static {p1, p2}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_49

    :cond_42
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    iget-object p2, p0, Lio/flutter/plugin/editing/d;->k:Landroid/text/Layout;

    invoke-static {p1, p2}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    :goto_49
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object p2, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/editing/d;->setSelection(II)Z

    :goto_58
    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->endBatchEdit()Z

    return v3

    :cond_5c
    :goto_5c
    return v2
.end method

.method private h(Ljava/io/InputStream;I)[B
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array p2, p2, [B

    :goto_7
    const/4 v1, -0x1

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_f

    :catch_d
    nop

    const/4 v2, -0x1

    :goto_f
    if-ne v2, v1, :cond_16

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_7
.end method


# virtual methods
.method public a(ZZZ)V
    .registers 10

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->j:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->a:Landroid/view/View;

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/e;->i()I

    move-result v2

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/e;->h()I

    move-result v3

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/e;->g()I

    move-result v4

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/e;->f()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->f:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz p1, :cond_30

    iget-object p2, p0, Lio/flutter/plugin/editing/d;->j:Landroid/view/inputmethod/InputMethodManager;

    iget-object p3, p0, Lio/flutter/plugin/editing/d;->a:Landroid/view/View;

    iget v0, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/d;->d(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_30
    iget-boolean p1, p0, Lio/flutter/plugin/editing/d;->g:Z

    if-eqz p1, :cond_3f

    invoke-direct {p0}, Lio/flutter/plugin/editing/d;->c()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/plugin/editing/d;->j:Landroid/view/inputmethod/InputMethodManager;

    iget-object p3, p0, Lio/flutter/plugin/editing/d;->a:Landroid/view/View;

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    :cond_3f
    return-void
.end method

.method public beginBatchEdit()Z
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/e;->b()V

    iget v0, p0, Lio/flutter/plugin/editing/d;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/flutter/plugin/editing/d;->n:I

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->clearMetaKeyStates(I)Z

    move-result p1

    return p1
.end method

.method public closeConnection()V
    .registers 2

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/editing/e;->l(Lio/flutter/plugin/editing/e$b;)V

    :goto_8
    iget v0, p0, Lio/flutter/plugin/editing/d;->n:I

    if-lez v0, :cond_16

    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->endBatchEdit()Z

    iget v0, p0, Lio/flutter/plugin/editing/d;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/flutter/plugin/editing/d;->n:I

    goto :goto_8

    :cond_16
    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 8

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x19

    if-lt p3, v1, :cond_69

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_69

    :try_start_b
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_69

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result p2

    if-lez p2, :cond_69

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/editing/d;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_66

    :try_start_2f
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_37} :catch_62

    if-eqz v2, :cond_66

    const/high16 v0, 0x10000

    invoke-direct {p0, v2, v0}, Lio/flutter/plugin/editing/d;->h(Ljava/io/InputStream;I)[B

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "mimeType"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "uri"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iget v0, p0, Lio/flutter/plugin/editing/d;->b:I

    invoke-virtual {p2, v0, v2}, Lr0/q;->b(ILjava/util/Map;)V

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V

    return p3

    :catch_62
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V

    return v0

    :cond_66
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V

    :catch_69
    :cond_69
    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .registers 5

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/e;->i()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    return p1
.end method

.method public endBatchEdit()Z
    .registers 3

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move-result v0

    iget v1, p0, Lio/flutter/plugin/editing/d;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/flutter/plugin/editing/d;->n:I

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/e;->d()V

    return v0
.end method

.method public f(Landroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-ne v0, v2, :cond_19

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v3, p1}, Lio/flutter/plugin/editing/d;->e(ZZ)Z

    move-result p1

    return p1

    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_2a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lio/flutter/plugin/editing/d;->e(ZZ)Z

    move-result p1

    return p1

    :cond_2a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_3b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v3, p1}, Lio/flutter/plugin/editing/d;->g(ZZ)Z

    move-result p1

    return p1

    :cond_3b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_4c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lio/flutter/plugin/editing/d;->g(ZZ)Z

    move-result p1

    return p1

    :cond_4c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_5c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0xa0

    if-ne v0, v2, :cond_6d

    :cond_5c
    const/high16 v0, 0x20000

    iget-object v2, p0, Lio/flutter/plugin/editing/d;->e:Landroid/view/inputmethod/EditorInfo;

    iget v4, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v4

    if-nez v0, :cond_6d

    iget p1, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/d;->performEditorAction(I)Z

    return v3

    :cond_6d
    iget-object v0, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    if-ltz v0, :cond_a8

    if-ltz v2, :cond_a8

    if-nez p1, :cond_84

    goto :goto_a8

    :cond_84
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->beginBatchEdit()Z

    if-eq v1, v0, :cond_96

    iget-object v2, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    invoke-virtual {v2, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_96
    iget-object v0, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/2addr v1, v3

    invoke-virtual {p0, v1, v1}, Lio/flutter/plugin/editing/d;->setSelection(II)Z

    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->endBatchEdit()Z

    return v3

    :cond_a8
    :goto_a8
    return v1
.end method

.method public finishComposingText()Z
    .registers 2

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->d:Lio/flutter/plugin/editing/e;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 6

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    iget-object v2, p0, Lio/flutter/plugin/editing/d;->f:Landroid/view/inputmethod/ExtractedTextRequest;

    if-nez v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-ne p2, v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The input method toggled text monitoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1f

    const-string v1, "on"

    goto :goto_21

    :cond_1f
    const-string v1, "off"

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnectionAdaptor"

    invoke-static {v1, v0}, Le0/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    if-eqz p2, :cond_31

    move-object p2, p1

    goto :goto_32

    :cond_31
    const/4 p2, 0x0

    :goto_32
    iput-object p2, p0, Lio/flutter/plugin/editing/d;->f:Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/d;->d(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .registers 2

    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->beginBatchEdit()Z

    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/d;->b(I)Z

    move-result p1

    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->endBatchEdit()Z

    return p1
.end method

.method public performEditorAction(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_4c

    if-eq p1, v0, :cond_44

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_34

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2c

    const/4 v1, 0x5

    if-eq p1, v1, :cond_24

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1c

    iget-object p1, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iget v1, p0, Lio/flutter/plugin/editing/d;->b:I

    invoke-virtual {p1, v1}, Lr0/q;->e(I)V

    goto :goto_53

    :cond_1c
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iget v1, p0, Lio/flutter/plugin/editing/d;->b:I

    invoke-virtual {p1, v1}, Lr0/q;->k(I)V

    goto :goto_53

    :cond_24
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iget v1, p0, Lio/flutter/plugin/editing/d;->b:I

    invoke-virtual {p1, v1}, Lr0/q;->h(I)V

    goto :goto_53

    :cond_2c
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iget v1, p0, Lio/flutter/plugin/editing/d;->b:I

    invoke-virtual {p1, v1}, Lr0/q;->n(I)V

    goto :goto_53

    :cond_34
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iget v1, p0, Lio/flutter/plugin/editing/d;->b:I

    invoke-virtual {p1, v1}, Lr0/q;->m(I)V

    goto :goto_53

    :cond_3c
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iget v1, p0, Lio/flutter/plugin/editing/d;->b:I

    invoke-virtual {p1, v1}, Lr0/q;->f(I)V

    goto :goto_53

    :cond_44
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iget v1, p0, Lio/flutter/plugin/editing/d;->b:I

    invoke-virtual {p1, v1}, Lr0/q;->g(I)V

    goto :goto_53

    :cond_4c
    iget-object p1, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iget v1, p0, Lio/flutter/plugin/editing/d;->b:I

    invoke-virtual {p1, v1}, Lr0/q;->p(I)V

    :goto_53
    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->c:Lr0/q;

    iget v1, p0, Lio/flutter/plugin/editing/d;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lr0/q;->j(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .registers 5

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->j:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/d;->a:Landroid/view/View;

    invoke-direct {p0}, Lio/flutter/plugin/editing/d;->c()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    :cond_f
    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iget-boolean v1, p0, Lio/flutter/plugin/editing/d;->g:Z

    if-eq p1, v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The input method toggled cursor monitoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2a

    const-string v2, "on"

    goto :goto_2c

    :cond_2a
    const-string v2, "off"

    :goto_2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputConnectionAdaptor"

    invoke-static {v2, v1}, Le0/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    iput-boolean p1, p0, Lio/flutter/plugin/editing/d;->g:Z

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/d;->m:Lio/flutter/plugin/editing/d$a;

    invoke-interface {v0, p1}, Lio/flutter/plugin/editing/d$a;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingRegion(II)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4

    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->beginBatchEdit()Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    goto :goto_12

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    :goto_12
    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->endBatchEdit()Z

    return p1
.end method

.method public setSelection(II)Z
    .registers 3

    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->beginBatchEdit()Z

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result p1

    invoke-virtual {p0}, Lio/flutter/plugin/editing/d;->endBatchEdit()Z

    return p1
.end method
