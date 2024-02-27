.class public Landroidx/core/view/accessibility/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/f$a;
    }
.end annotation


# static fields
.field private static d:I


# instance fields
.field private final a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/view/accessibility/f;->b:I

    iput v0, p0, Landroidx/core/view/accessibility/f;->c:I

    iput-object p1, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method private G(Landroid/view/View;)V
    .registers 6

    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/f;->p(Landroid/view/View;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_3f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3f
    return-void
.end method

.method private H(IZ)V
    .registers 8

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->m()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    not-int v4, p1

    and-int/2addr v3, v4

    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    or-int/2addr p1, v3

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    return-void
.end method

.method public static P(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/f;
    .registers 2

    new-instance v0, Landroidx/core/view/accessibility/f;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/f;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method private b(Landroid/text/style/ClickableSpan;Landroid/text/Spanned;I)V
    .registers 6

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1a
    return-object v0
.end method

.method private static g(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8a

    sparse-switch p0, :sswitch_data_90

    packed-switch p0, :pswitch_data_e2

    packed-switch p0, :pswitch_data_f6

    packed-switch p0, :pswitch_data_108

    const-string p0, "ACTION_UNKNOWN"

    return-object p0

    :pswitch_15
    const-string p0, "ACTION_DRAG_CANCEL"

    return-object p0

    :pswitch_18
    const-string p0, "ACTION_DRAG_DROP"

    return-object p0

    :pswitch_1b
    const-string p0, "ACTION_DRAG_START"

    return-object p0

    :pswitch_1e
    const-string p0, "ACTION_IME_ENTER"

    return-object p0

    :pswitch_21
    const-string p0, "ACTION_PRESS_AND_HOLD"

    return-object p0

    :pswitch_24
    const-string p0, "ACTION_PAGE_RIGHT"

    return-object p0

    :pswitch_27
    const-string p0, "ACTION_PAGE_LEFT"

    return-object p0

    :pswitch_2a
    const-string p0, "ACTION_PAGE_DOWN"

    return-object p0

    :pswitch_2d
    const-string p0, "ACTION_PAGE_UP"

    return-object p0

    :pswitch_30
    const-string p0, "ACTION_HIDE_TOOLTIP"

    return-object p0

    :pswitch_33
    const-string p0, "ACTION_SHOW_TOOLTIP"

    return-object p0

    :pswitch_36
    const-string p0, "ACTION_SET_PROGRESS"

    return-object p0

    :pswitch_39
    const-string p0, "ACTION_CONTEXT_CLICK"

    return-object p0

    :pswitch_3c
    const-string p0, "ACTION_SCROLL_RIGHT"

    return-object p0

    :pswitch_3f
    const-string p0, "ACTION_SCROLL_DOWN"

    return-object p0

    :pswitch_42
    const-string p0, "ACTION_SCROLL_LEFT"

    return-object p0

    :pswitch_45
    const-string p0, "ACTION_SCROLL_UP"

    return-object p0

    :pswitch_48
    const-string p0, "ACTION_SCROLL_TO_POSITION"

    return-object p0

    :pswitch_4b
    const-string p0, "ACTION_SHOW_ON_SCREEN"

    return-object p0

    :sswitch_4e
    const-string p0, "ACTION_MOVE_WINDOW"

    return-object p0

    :sswitch_51
    const-string p0, "ACTION_SET_TEXT"

    return-object p0

    :sswitch_54
    const-string p0, "ACTION_COLLAPSE"

    return-object p0

    :sswitch_57
    const-string p0, "ACTION_EXPAND"

    return-object p0

    :sswitch_5a
    const-string p0, "ACTION_SET_SELECTION"

    return-object p0

    :sswitch_5d
    const-string p0, "ACTION_CUT"

    return-object p0

    :sswitch_60
    const-string p0, "ACTION_PASTE"

    return-object p0

    :sswitch_63
    const-string p0, "ACTION_COPY"

    return-object p0

    :sswitch_66
    const-string p0, "ACTION_SCROLL_BACKWARD"

    return-object p0

    :sswitch_69
    const-string p0, "ACTION_SCROLL_FORWARD"

    return-object p0

    :sswitch_6c
    const-string p0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object p0

    :sswitch_6f
    const-string p0, "ACTION_NEXT_HTML_ELEMENT"

    return-object p0

    :sswitch_72
    const-string p0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_75
    const-string p0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_78
    const-string p0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_7b
    const-string p0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_7e
    const-string p0, "ACTION_LONG_CLICK"

    return-object p0

    :sswitch_81
    const-string p0, "ACTION_CLICK"

    return-object p0

    :sswitch_84
    const-string p0, "ACTION_CLEAR_SELECTION"

    return-object p0

    :sswitch_87
    const-string p0, "ACTION_SELECT"

    return-object p0

    :cond_8a
    const-string p0, "ACTION_CLEAR_FOCUS"

    return-object p0

    :cond_8d
    const-string p0, "ACTION_FOCUS"

    return-object p0

    :sswitch_data_90
    .sparse-switch
        0x4 -> :sswitch_87
        0x8 -> :sswitch_84
        0x10 -> :sswitch_81
        0x20 -> :sswitch_7e
        0x40 -> :sswitch_7b
        0x80 -> :sswitch_78
        0x100 -> :sswitch_75
        0x200 -> :sswitch_72
        0x400 -> :sswitch_6f
        0x800 -> :sswitch_6c
        0x1000 -> :sswitch_69
        0x2000 -> :sswitch_66
        0x4000 -> :sswitch_63
        0x8000 -> :sswitch_60
        0x10000 -> :sswitch_5d
        0x20000 -> :sswitch_5a
        0x40000 -> :sswitch_57
        0x80000 -> :sswitch_54
        0x200000 -> :sswitch_51
        0x1020042 -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x1020036
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x1020044
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x1020054
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static k(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;
    .registers 4

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_15

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v1, p0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private n(Landroid/view/View;)Landroid/util/SparseArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/text/style/ClickableSpan;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/f;->p(Landroid/view/View;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sget v1, Lm/b;->I:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method private p(Landroid/view/View;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/text/style/ClickableSpan;",
            ">;>;"
        }
    .end annotation

    sget v0, Lm/b;->I:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    return-object p1
.end method

.method private t()Z
    .registers 2

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private u(Landroid/text/style/ClickableSpan;Landroid/util/SparseArray;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/style/ClickableSpan;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/text/style/ClickableSpan;",
            ">;>;)I"
        }
    .end annotation

    if-eqz p2, :cond_23

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_23
    sget p1, Landroidx/core/view/accessibility/f;->d:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Landroidx/core/view/accessibility/f;->d:I

    return p1
.end method


# virtual methods
.method public A()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public E()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    return v0
.end method

.method public F(ILandroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public I(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public J(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/e;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_10

    :cond_c
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/core/view/accessibility/f;->H(IZ)V

    :goto_10
    return-void
.end method

.method public K(Ljava/lang/CharSequence;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_c
    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_17
    return-void
.end method

.method public L(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_10

    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/core/view/accessibility/f;->H(IZ)V

    :goto_10
    return-void
.end method

.method public M(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    return-void
.end method

.method public N(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-static {}, Landroidx/core/os/a;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/d;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_c
    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_17
    return-void
.end method

.method public O()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public a(Landroidx/core/view/accessibility/f$a;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p1, p1, Landroidx/core/view/accessibility/f$a;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;Landroid/view/View;)V
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_43

    invoke-direct {p0}, Landroidx/core/view/accessibility/f;->d()V

    invoke-direct {p0, p2}, Landroidx/core/view/accessibility/f;->G(Landroid/view/View;)V

    invoke-static {p1}, Landroidx/core/view/accessibility/f;->k(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    if-eqz v0, :cond_43

    array-length v1, v0

    if-lez v1, :cond_43

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->m()Landroid/os/Bundle;

    move-result-object v1

    sget v2, Lm/b;->a:I

    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Landroidx/core/view/accessibility/f;->n(Landroid/view/View;)Landroid/util/SparseArray;

    move-result-object p2

    const/4 v1, 0x0

    :goto_25
    array-length v2, v0

    if-ge v1, v2, :cond_43

    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2}, Landroidx/core/view/accessibility/f;->u(Landroid/text/style/ClickableSpan;Landroid/util/SparseArray;)I

    move-result v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v3, v0, v1

    move-object v4, p1

    check-cast v4, Landroid/text/Spanned;

    invoke-direct {p0, v3, v4, v2}, Landroidx/core/view/accessibility/f;->b(Landroid/text/style/ClickableSpan;Landroid/text/Spanned;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_43
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Landroidx/core/view/accessibility/f;

    if-nez v2, :cond_d

    return v1

    :cond_d
    check-cast p1, Landroidx/core/view/accessibility/f;

    iget-object v2, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_18

    iget-object v2, p1, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_21

    return v1

    :cond_18
    iget-object v3, p1, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    return v1

    :cond_21
    iget v2, p0, Landroidx/core/view/accessibility/f;->c:I

    iget v3, p1, Landroidx/core/view/accessibility/f;->c:I

    if-eq v2, v3, :cond_28

    return v1

    :cond_28
    iget v2, p0, Landroidx/core/view/accessibility/f;->b:I

    iget p1, p1, Landroidx/core/view/accessibility/f;->b:I

    if-eq v2, p1, :cond_2f

    return v1

    :cond_2f
    return v0
.end method

.method public f()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/f$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Landroidx/core/view/accessibility/f$a;

    invoke-direct {v5, v4}, Landroidx/core/view/accessibility/f$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_23
    return-object v1

    :cond_24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public i(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public j()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/CharSequence;
    .registers 11

    invoke-direct {p0}, Landroidx/core/view/accessibility/f;->t()Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    invoke-direct {p0, v1}, Landroidx/core/view/accessibility/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    invoke-direct {p0, v2}, Landroidx/core/view/accessibility/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    invoke-direct {p0, v3}, Landroidx/core/view/accessibility/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v7, v5, :cond_7b

    new-instance v5, Landroidx/core/view/accessibility/a;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->m()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v5, v6, p0, v8}, Landroidx/core/view/accessibility/a;-><init>(ILandroidx/core/view/accessibility/f;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v4, v5, v6, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_7b
    return-object v4

    :cond_7c
    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroidx/core/os/a;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/f;->h(Landroid/graphics/Rect;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/f;->i(Landroid/graphics/Rect;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->o()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->j()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; contentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->l()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; viewId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; uniqueId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; checkable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; checked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->E()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; clickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; longClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->C()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; scrollable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->D()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/f;->f()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_115
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_152

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/f$a;

    invoke-virtual {v3}, Landroidx/core/view/accessibility/f$a;->a()I

    move-result v4

    invoke-static {v4}, Landroidx/core/view/accessibility/f;->g(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTION_UNKNOWN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13f

    invoke-virtual {v3}, Landroidx/core/view/accessibility/f$a;->b()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_13f

    invoke-virtual {v3}, Landroidx/core/view/accessibility/f$a;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_13f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_14f

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14f
    add-int/lit8 v2, v2, 0x1

    goto :goto_115

    :cond_152
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public w()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/accessibility/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    return v0
.end method
