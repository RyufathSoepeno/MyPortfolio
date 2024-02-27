.class Landroidx/appcompat/widget/p0;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/p0$b;,
        Landroidx/appcompat/widget/p0$a;
    }
.end annotation


# instance fields
.field private final e:Landroid/graphics/Rect;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/reflect/Field;

.field private l:Landroidx/appcompat/widget/p0$a;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroidx/core/view/i1;

.field private q:Landroidx/core/widget/i;

.field r:Landroidx/appcompat/widget/p0$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    sget v0, Lc/a;->z:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/p0;->e:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/p0;->f:I

    iput p1, p0, Landroidx/appcompat/widget/p0;->g:I

    iput p1, p0, Landroidx/appcompat/widget/p0;->h:I

    iput p1, p0, Landroidx/appcompat/widget/p0;->i:I

    iput-boolean p2, p0, Landroidx/appcompat/widget/p0;->n:Z

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    :try_start_1b
    const-class p1, Landroid/widget/AbsListView;

    const-string p2, "mIsChildViewEnabled"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/p0;->k:Ljava/lang/reflect/Field;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2e
    return-void
.end method

.method private a()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/p0;->o:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/p0;->drawableStateChanged()V

    iget v1, p0, Landroidx/appcompat/widget/p0;->j:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_19
    iget-object v0, p0, Landroidx/appcompat/widget/p0;->p:Landroidx/core/view/i1;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroidx/core/view/i1;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/p0;->p:Landroidx/core/view/i1;

    :cond_23
    return-void
.end method

.method private b(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/p0;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Landroidx/appcompat/widget/p0;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_16
    return-void
.end method

.method private f(ILandroid/view/View;)V
    .registers 8

    iget-object v0, p0, Landroidx/appcompat/widget/p0;->e:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroidx/appcompat/widget/p0;->f:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroidx/appcompat/widget/p0;->g:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroidx/appcompat/widget/p0;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroidx/appcompat/widget/p0;->i:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :try_start_31
    iget-object v0, p0, Landroidx/appcompat/widget/p0;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, v0, :cond_56

    iget-object p2, p0, Landroidx/appcompat/widget/p0;->k:Ljava/lang/reflect/Field;

    if-nez v0, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_56

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V
    :try_end_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_56
    :goto_56
    return-void
.end method

.method private g(ILandroid/view/View;)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v3, -0x1

    if-eq p1, v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_13

    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_13
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/p0;->f(ILandroid/view/View;)V

    if-eqz v3, :cond_30

    iget-object p1, p0, Landroidx/appcompat/widget/p0;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-static {v0, p2, p1}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;FF)V

    :cond_30
    return-void
.end method

.method private h(ILandroid/view/View;FF)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/p0;->g(ILandroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    invoke-static {p2, p3, p4}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;FF)V

    :cond_f
    return-void
.end method

.method private i(Landroid/view/View;IFF)V
    .registers 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/p0;->o:Z

    invoke-virtual {p0, p3, p4}, Landroid/view/View;->drawableHotspotChanged(FF)V

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    iget v1, p0, Landroidx/appcompat/widget/p0;->j:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2e

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2e

    if-eq v1, p1, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_2e
    iput p2, p0, Landroidx/appcompat/widget/p0;->j:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_4a
    invoke-direct {p0, p2, p1, p3, p4}, Landroidx/appcompat/widget/p0;->h(ILandroid/view/View;FF)V

    invoke-direct {p0, v3}, Landroidx/appcompat/widget/p0;->setSelectorEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method private j()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0;->o:Z

    return v0
.end method

.method private k()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Landroidx/appcompat/widget/p0;->j()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_19
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/p0;->l:Landroidx/appcompat/widget/p0$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/p0$a;->c(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public d(IIIII)I
    .registers 16

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    add-int/2addr p2, p3

    if-nez v2, :cond_18

    return p2

    :cond_18
    const/4 p3, 0x0

    if-lez v0, :cond_1e

    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_28
    if-ge v4, v1, :cond_74

    invoke-interface {v2, v4}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v5, :cond_32

    move-object v6, v3

    move v5, v8

    :cond_32
    invoke-interface {v2, v4, v6, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_43

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_43
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v8, :cond_4e

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_52

    :cond_4e
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_52
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    if-lez v4, :cond_5b

    add-int/2addr p2, v0

    :cond_5b
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p2, v8

    if-lt p2, p4, :cond_6c

    if-ltz p5, :cond_6b

    if-le v4, p5, :cond_6b

    if-lez v7, :cond_6b

    if-eq p2, p4, :cond_6b

    move p4, v7

    :cond_6b
    return p4

    :cond_6c
    if-ltz p5, :cond_71

    if-lt v4, p5, :cond_71

    move v7, p2

    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_74
    return p2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/p0;->c(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/p0;->r:Landroidx/appcompat/widget/p0$b;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/p0;->setSelectorEnabled(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/p0;->k()V

    return-void
.end method

.method public e(Landroid/view/MotionEvent;I)Z
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v0, v3, :cond_14

    const/4 p2, 0x3

    if-eq v0, p2, :cond_11

    :cond_e
    :goto_e
    const/4 p2, 0x0

    const/4 v3, 0x1

    goto :goto_46

    :cond_11
    :goto_11
    const/4 p2, 0x0

    const/4 v3, 0x0

    goto :goto_46

    :cond_14
    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_1e

    goto :goto_11

    :cond_1e
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v4, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_31

    const/4 p2, 0x1

    goto :goto_46

    :cond_31
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    int-to-float p2, p2

    invoke-direct {p0, v3, v5, v4, p2}, Landroidx/appcompat/widget/p0;->i(Landroid/view/View;IFF)V

    if-ne v0, v2, :cond_e

    invoke-direct {p0, v3, v5}, Landroidx/appcompat/widget/p0;->b(Landroid/view/View;I)V

    goto :goto_e

    :goto_46
    if-eqz v3, :cond_4a

    if-eqz p2, :cond_4d

    :cond_4a
    invoke-direct {p0}, Landroidx/appcompat/widget/p0;->a()V

    :cond_4d
    if-eqz v3, :cond_65

    iget-object p2, p0, Landroidx/appcompat/widget/p0;->q:Landroidx/core/widget/i;

    if-nez p2, :cond_5a

    new-instance p2, Landroidx/core/widget/i;

    invoke-direct {p2, p0}, Landroidx/core/widget/i;-><init>(Landroid/widget/ListView;)V

    iput-object p2, p0, Landroidx/appcompat/widget/p0;->q:Landroidx/core/widget/i;

    :cond_5a
    iget-object p2, p0, Landroidx/appcompat/widget/p0;->q:Landroidx/core/widget/i;

    invoke-virtual {p2, v2}, Landroidx/core/widget/a;->m(Z)Landroidx/core/widget/a;

    iget-object p2, p0, Landroidx/appcompat/widget/p0;->q:Landroidx/core/widget/i;

    invoke-virtual {p2, p0, p1}, Landroidx/core/widget/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_6c

    :cond_65
    iget-object p1, p0, Landroidx/appcompat/widget/p0;->q:Landroidx/core/widget/i;

    if-eqz p1, :cond_6c

    invoke-virtual {p1, v1}, Landroidx/core/widget/a;->m(Z)Landroidx/core/widget/a;

    :cond_6c
    :goto_6c
    return v3
.end method

.method public hasFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0;->n:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0;->n:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isFocused()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0;->n:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isInTouchMode()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0;->n:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0;->m:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/p0;->r:Landroidx/appcompat/widget/p0$b;

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_b

    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_21

    iget-object v1, p0, Landroidx/appcompat/widget/p0;->r:Landroidx/appcompat/widget/p0$b;

    if-nez v1, :cond_21

    new-instance v1, Landroidx/appcompat/widget/p0$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/p0$b;-><init>(Landroidx/appcompat/widget/p0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/p0;->r:Landroidx/appcompat/widget/p0$b;

    invoke-virtual {v1}, Landroidx/appcompat/widget/p0$b;->b()V

    :cond_21
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_32

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2e

    goto :goto_32

    :cond_2e
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_67

    :cond_32
    :goto_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result p1

    if-eq p1, v3, :cond_67

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_67

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_64
    invoke-direct {p0}, Landroidx/appcompat/widget/p0;->k()V

    :cond_67
    :goto_67
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_17

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/p0;->j:I

    :goto_17
    iget-object v0, p0, Landroidx/appcompat/widget/p0;->r:Landroidx/appcompat/widget/p0$b;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroidx/appcompat/widget/p0$b;->a()V

    :cond_1e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method setListSelectionHidden(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/p0;->m:Z

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Landroidx/appcompat/widget/p0$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/p0$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/p0;->l:Landroidx/appcompat/widget/p0$a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_18

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_18
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroidx/appcompat/widget/p0;->f:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroidx/appcompat/widget/p0;->g:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroidx/appcompat/widget/p0;->h:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroidx/appcompat/widget/p0;->i:I

    return-void
.end method
