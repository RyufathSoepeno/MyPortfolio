.class public Landroidx/appcompat/widget/f1;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/f1$c;,
        Landroidx/appcompat/widget/f1$b;,
        Landroidx/appcompat/widget/f1$d;
    }
.end annotation


# static fields
.field private static final n:Landroid/view/animation/Interpolator;


# instance fields
.field e:Ljava/lang/Runnable;

.field private f:Landroidx/appcompat/widget/f1$c;

.field g:Landroidx/appcompat/widget/s0;

.field private h:Landroid/widget/Spinner;

.field private i:Z

.field j:I

.field k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/f1;->n:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private b()Landroid/widget/Spinner;
    .registers 5

    new-instance v0, Landroidx/appcompat/widget/w;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lc/a;->h:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroidx/appcompat/widget/s0$a;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/s0$a;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v0
.end method

.method private d()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->h:Landroid/widget/Spinner;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private e()V
    .registers 5

    invoke-direct {p0}, Landroidx/appcompat/widget/f1;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/f1;->h:Landroid/widget/Spinner;

    if-nez v0, :cond_11

    invoke-direct {p0}, Landroidx/appcompat/widget/f1;->b()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/f1;->h:Landroid/widget/Spinner;

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/f1;->g:Landroidx/appcompat/widget/s0;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->h:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->h:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_34

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->h:Landroid/widget/Spinner;

    new-instance v1, Landroidx/appcompat/widget/f1$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/f1$b;-><init>(Landroidx/appcompat/widget/f1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_34
    iget-object v0, p0, Landroidx/appcompat/widget/f1;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_3e

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/f1;->e:Ljava/lang/Runnable;

    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/widget/f1;->h:Landroid/widget/Spinner;

    iget v1, p0, Landroidx/appcompat/widget/f1;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method private f()Z
    .registers 6

    invoke-direct {p0}, Landroidx/appcompat/widget/f1;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/f1;->h:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->g:Landroidx/appcompat/widget/s0;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->h:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/f1;->setTabSelected(I)V

    return v1
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->g:Landroidx/appcompat/widget/s0;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_d
    new-instance v0, Landroidx/appcompat/widget/f1$a;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/f1$a;-><init>(Landroidx/appcompat/widget/f1;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/f1;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method c(Ld/a$c;Z)Landroidx/appcompat/widget/f1$d;
    .registers 5

    new-instance v0, Landroidx/appcompat/widget/f1$d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/appcompat/widget/f1$d;-><init>(Landroidx/appcompat/widget/f1;Landroid/content/Context;Ld/a$c;Z)V

    if-eqz p2, :cond_1b

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 p2, -0x1

    iget v1, p0, Landroidx/appcompat/widget/f1;->l:I

    invoke-direct {p1, p2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f

    :cond_1b
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Landroidx/appcompat/widget/f1;->f:Landroidx/appcompat/widget/f1$c;

    if-nez p1, :cond_2a

    new-instance p1, Landroidx/appcompat/widget/f1$c;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/f1$c;-><init>(Landroidx/appcompat/widget/f1;)V

    iput-object p1, p0, Landroidx/appcompat/widget/f1;->f:Landroidx/appcompat/widget/f1$c;

    :cond_2a
    iget-object p1, p0, Landroidx/appcompat/widget/f1;->f:Landroidx/appcompat/widget/f1$c;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2f
    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lh/a;->b(Landroid/content/Context;)Lh/a;

    move-result-object p1

    invoke-virtual {p1}, Lh/a;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/f1;->setContentHeight(I)V

    invoke-virtual {p1}, Lh/a;->e()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/f1;->k:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    check-cast p2, Landroidx/appcompat/widget/f1$d;

    invoke-virtual {p2}, Landroidx/appcompat/widget/f1$d;->b()Ld/a$c;

    move-result-object p1

    invoke-virtual {p1}, Ld/a$c;->e()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    iget-object v4, p0, Landroidx/appcompat/widget/f1;->g:Landroidx/appcompat/widget/s0;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, v0, :cond_3f

    if-eq p2, v2, :cond_1e

    const/high16 v5, -0x80000000

    if-ne p2, v5, :cond_3f

    :cond_1e
    const/4 p2, 0x2

    if-le v4, p2, :cond_2f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x3ecccccd    # 0.4f

    mul-float p2, p2, v4

    float-to-int p2, p2

    iput p2, p0, Landroidx/appcompat/widget/f1;->j:I

    goto :goto_36

    :cond_2f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    div-int/2addr v4, p2

    iput v4, p0, Landroidx/appcompat/widget/f1;->j:I

    :goto_36
    iget p2, p0, Landroidx/appcompat/widget/f1;->j:I

    iget v4, p0, Landroidx/appcompat/widget/f1;->k:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_40

    :cond_3f
    const/4 p2, -0x1

    :goto_40
    iput p2, p0, Landroidx/appcompat/widget/f1;->j:I

    iget p2, p0, Landroidx/appcompat/widget/f1;->l:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v3, :cond_4f

    iget-boolean v2, p0, Landroidx/appcompat/widget/f1;->i:Z

    if-eqz v2, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    if-eqz v0, :cond_67

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->g:Landroidx/appcompat/widget/s0;

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->g:Landroidx/appcompat/widget/s0;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_67

    invoke-direct {p0}, Landroidx/appcompat/widget/f1;->e()V

    goto :goto_6a

    :cond_67
    invoke-direct {p0}, Landroidx/appcompat/widget/f1;->f()Z

    :goto_6a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_7e

    if-eq v0, p1, :cond_7e

    iget p1, p0, Landroidx/appcompat/widget/f1;->m:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f1;->setTabSelected(I)V

    :cond_7e
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/f1;->i:Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/f1;->l:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .registers 7

    iput p1, p0, Landroidx/appcompat/widget/f1;->m:I

    iget-object v0, p0, Landroidx/appcompat/widget/f1;->g:Landroidx/appcompat/widget/s0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Landroidx/appcompat/widget/f1;->g:Landroidx/appcompat/widget/s0;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1f

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f1;->a(I)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/f1;->h:Landroid/widget/Spinner;

    if-eqz v0, :cond_2b

    if-ltz p1, :cond_2b

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_2b
    return-void
.end method
