.class abstract Landroidx/appcompat/widget/a;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/a$a;
    }
.end annotation


# instance fields
.field protected final e:Landroidx/appcompat/widget/a$a;

.field protected final f:Landroid/content/Context;

.field protected g:Landroidx/appcompat/widget/ActionMenuView;

.field protected h:Landroidx/appcompat/widget/c;

.field protected i:I

.field protected j:Landroidx/core/view/i1;

.field private k:Z

.field private l:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroidx/appcompat/widget/a$a;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/a$a;-><init>(Landroidx/appcompat/widget/a;)V

    iput-object p2, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/a$a;

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v0, Lc/a;->a:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p3

    if-eqz p3, :cond_2a

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p3, :cond_2a

    new-instance p3, Landroid/view/ContextThemeWrapper;

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Landroidx/appcompat/widget/a;->f:Landroid/content/Context;

    goto :goto_2c

    :cond_2a
    iput-object p1, p0, Landroidx/appcompat/widget/a;->f:Landroid/content/Context;

    :goto_2c
    return-void
.end method

.method static synthetic a(Landroidx/appcompat/widget/a;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Landroidx/appcompat/widget/a;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected static d(IIZ)I
    .registers 3

    if-eqz p2, :cond_4

    sub-int/2addr p0, p1

    goto :goto_5

    :cond_4
    add-int/2addr p0, p1

    :goto_5
    return p0
.end method


# virtual methods
.method protected c(Landroid/view/View;III)I
    .registers 6

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, p4

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected e(Landroid/view/View;IIIZ)I
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-eqz p5, :cond_15

    sub-int p4, p2, v0

    add-int/2addr v1, p3

    invoke-virtual {p1, p4, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1b

    :cond_15
    add-int p4, p2, v0

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1b
    if-eqz p5, :cond_1e

    neg-int v0, v0

    :cond_1e
    return v0
.end method

.method public f(IJ)Landroidx/core/view/i1;
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/a;->j:Landroidx/core/view/i1;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/core/view/i1;->c()V

    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_13
    invoke-static {p0}, Landroidx/core/view/h0;->b(Landroid/view/View;)Landroidx/core/view/i1;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/core/view/i1;->b(F)Landroidx/core/view/i1;

    move-result-object v0

    :goto_1d
    invoke-virtual {v0, p2, p3}, Landroidx/core/view/i1;->f(J)Landroidx/core/view/i1;

    iget-object p2, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/a$a;

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/widget/a$a;->d(Landroidx/core/view/i1;I)Landroidx/appcompat/widget/a$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/i1;->h(Landroidx/core/view/j1;)Landroidx/core/view/i1;

    return-object v0

    :cond_2a
    invoke-static {p0}, Landroidx/core/view/h0;->b(Landroid/view/View;)Landroidx/core/view/i1;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/view/i1;->b(F)Landroidx/core/view/i1;

    move-result-object v0

    goto :goto_1d
.end method

.method public getAnimatedVisibility()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/a;->j:Landroidx/core/view/i1;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/a$a;

    iget v0, v0, Landroidx/appcompat/widget/a$a;->b:I

    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/a;->i:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lc/j;->a:[I

    sget v2, Lc/a;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lc/j;->j:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/a;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroidx/appcompat/widget/a;->h:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->F(Landroid/content/res/Configuration;)V

    :cond_24
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b

    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->l:Z

    :cond_b
    iget-boolean v3, p0, Landroidx/appcompat/widget/a;->l:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1a

    if-nez p1, :cond_1a

    iput-boolean v4, p0, Landroidx/appcompat/widget/a;->l:Z

    :cond_1a
    const/16 p1, 0xa

    if-eq v0, p1, :cond_21

    const/4 p1, 0x3

    if-ne v0, p1, :cond_23

    :cond_21
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->l:Z

    :cond_23
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->k:Z

    :cond_9
    iget-boolean v2, p0, Landroidx/appcompat/widget/a;->k:Z

    const/4 v3, 0x1

    if-nez v2, :cond_18

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_18

    if-nez p1, :cond_18

    iput-boolean v3, p0, Landroidx/appcompat/widget/a;->k:Z

    :cond_18
    if-eq v0, v3, :cond_1d

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1f

    :cond_1d
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->k:Z

    :cond_1f
    return v3
.end method

.method public setContentHeight(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/a;->i:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/widget/a;->j:Landroidx/core/view/i1;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/core/view/i1;->c()V

    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_10
    return-void
.end method
