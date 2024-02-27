.class public Landroidx/appcompat/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/m0;
.implements Landroidx/core/view/a0;
.implements Landroidx/core/view/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionBarOverlayLayout$d;,
        Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    }
.end annotation


# static fields
.field static final J:[I


# instance fields
.field private A:Landroidx/core/view/m1;

.field private B:Landroidx/core/view/m1;

.field private C:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

.field private D:Landroid/widget/OverScroller;

.field E:Landroid/view/ViewPropertyAnimator;

.field final F:Landroid/animation/AnimatorListenerAdapter;

.field private final G:Ljava/lang/Runnable;

.field private final H:Ljava/lang/Runnable;

.field private final I:Landroidx/core/view/c0;

.field private e:I

.field private f:I

.field private g:Landroidx/appcompat/widget/ContentFrameLayout;

.field h:Landroidx/appcompat/widget/ActionBarContainer;

.field private i:Landroidx/appcompat/widget/n0;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field o:Z

.field private p:I

.field private q:I

.field private final r:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroid/graphics/Rect;

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/Rect;

.field private final w:Landroid/graphics/Rect;

.field private final x:Landroid/graphics/Rect;

.field private y:Landroidx/core/view/m1;

.field private z:Landroidx/core/view/m1;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lc/a;->b:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x1010059

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->J:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroid/graphics/Rect;

    sget-object p2, Landroidx/core/view/m1;->b:Landroidx/core/view/m1;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroidx/core/view/m1;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/view/m1;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/m1;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/view/m1;

    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->F:Landroid/animation/AnimatorListenerAdapter;

    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->G:Ljava/lang/Runnable;

    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$c;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$c;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->H:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v(Landroid/content/Context;)V

    new-instance p1, Landroidx/core/view/c0;

    invoke-direct {p1, p0}, Landroidx/core/view/c0;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->I:Landroidx/core/view/c0;

    return-void
.end method

.method private A()V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->G:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private B(F)Z
    .registers 11

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Landroid/widget/OverScroller;

    float-to-int v4, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le p1, v0, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method private p()V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->H:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private q(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    const/4 v0, 0x1

    if-eqz p3, :cond_13

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v1, :cond_13

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 p3, 0x1

    goto :goto_14

    :cond_13
    const/4 p3, 0x0

    :goto_14
    if-eqz p4, :cond_1f

    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-eq p4, v1, :cond_1f

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p3, 0x1

    :cond_1f
    if-eqz p6, :cond_2a

    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p6, p2, Landroid/graphics/Rect;->right:I

    if-eq p4, p6, :cond_2a

    iput p6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 p3, 0x1

    :cond_2a
    if-eqz p5, :cond_35

    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p2, :cond_35

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_36

    :cond_35
    move v0, p3

    :goto_36
    return v0
.end method

.method private t(Landroid/view/View;)Landroidx/appcompat/widget/n0;
    .registers 5

    instance-of v0, p1, Landroidx/appcompat/widget/n0;

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/appcompat/widget/n0;

    return-object p1

    :cond_7
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_12

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/n0;

    move-result-object p1

    return-object p1

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private v(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->J:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_32

    const/4 v1, 0x1

    :cond_32
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Landroid/widget/OverScroller;

    return-void
.end method

.method private x()V
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->H:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private y()V
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->G:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;Landroidx/appcompat/view/menu/j$a;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/n0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/j$a;)V

    return-void
.end method

.method public b()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0}, Landroidx/appcompat/widget/n0;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0}, Landroidx/appcompat/widget/n0;->c()V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    instance-of p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    return p1
.end method

.method public d()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0}, Landroidx/appcompat/widget/n0;->d()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3d
    return-void
.end method

.method public e()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0}, Landroidx/appcompat/widget/n0;->e()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0}, Landroidx/appcompat/widget/n0;->f()Z

    move-result v0

    return v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0}, Landroidx/appcompat/widget/n0;->g()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r()Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->I:Landroidx/core/view/c0;

    invoke-virtual {v0}, Landroidx/core/view/c0;->a()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0}, Landroidx/appcompat/widget/n0;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    if-nez p4, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_5
    return-void
.end method

.method public i(Landroid/view/View;I)V
    .registers 3

    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public j(Landroid/view/View;II[II)V
    .registers 6

    if-nez p5, :cond_5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_5
    return-void
.end method

.method public k(I)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x5

    if-eq p1, v0, :cond_13

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_e

    goto :goto_1e

    :cond_e
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_1e

    :cond_13
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {p1}, Landroidx/appcompat/widget/n0;->t()V

    goto :goto_1e

    :cond_19
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {p1}, Landroidx/appcompat/widget/n0;->s()V

    :goto_1e
    return-void
.end method

.method public l()V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0}, Landroidx/appcompat/widget/n0;->h()V

    return-void
.end method

.method public m(Landroid/view/View;IIIII[I)V
    .registers 8

    invoke-virtual/range {p0 .. p6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n(Landroid/view/View;IIIII)V

    return-void
.end method

.method public n(Landroid/view/View;IIIII)V
    .registers 7

    if-nez p6, :cond_5

    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_5
    return-void
.end method

.method public o(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    if-nez p4, :cond_a

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 9

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    invoke-static {p1}, Landroidx/core/view/m1;->v(Landroid/view/WindowInsets;)Landroidx/core/view/m1;

    move-result-object p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/core/view/m1;->i()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/view/m1;->k()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/m1;->j()I

    move-result v3

    invoke-virtual {p1}, Landroidx/core/view/m1;->h()I

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    invoke-static {p0, p1, v1}, Landroidx/core/view/h0;->c(Landroid/view/View;Landroidx/core/view/m1;Landroid/graphics/Rect;)Landroidx/core/view/m1;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroidx/core/view/m1;->l(IIII)Landroidx/core/view/m1;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroidx/core/view/m1;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/view/m1;

    invoke-virtual {v2, v1}, Landroidx/core/view/m1;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4a

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroidx/core/view/m1;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/view/m1;

    const/4 v0, 0x1

    :cond_4a
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5d

    :cond_5c
    move v2, v0

    :goto_5d
    if-eqz v2, :cond_62

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_62
    invoke-virtual {p1}, Landroidx/core/view/m1;->a()Landroidx/core/view/m1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/m1;->c()Landroidx/core/view/m1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/m1;->b()Landroidx/core/view/m1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/m1;->u()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v(Landroid/content/Context;)V

    invoke-static {p0}, Landroidx/core/view/h0;->E(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    const/4 p4, 0x0

    :goto_d
    if-ge p4, p1, :cond_37

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_34

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, p2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p3

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    invoke-virtual {p5, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_34
    add-int/lit8 p4, p4, 0x1

    goto :goto_d

    :cond_37
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    invoke-static {p0}, Landroidx/core/view/h0;->s(Landroid/view/View;)I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_4a

    const/4 v4, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v4, 0x0

    :goto_4b
    if-eqz v4, :cond_5f

    iget v5, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:I

    iget-boolean v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    if-eqz v6, :cond_71

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_71

    iget v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:I

    add-int/2addr v5, v6

    goto :goto_71

    :cond_5f
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_70

    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    goto :goto_71

    :cond_70
    const/4 v5, 0x0

    :cond_71
    :goto_71
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroidx/core/view/m1;

    iput-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/m1;

    iget-boolean v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    if-nez v7, :cond_93

    if-nez v4, :cond_93

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v5

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v2, v5, v2, v2}, Landroidx/core/view/m1;->l(IIII)Landroidx/core/view/m1;

    move-result-object v2

    goto :goto_be

    :cond_93
    invoke-virtual {v6}, Landroidx/core/view/m1;->i()I

    move-result v4

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/m1;

    invoke-virtual {v6}, Landroidx/core/view/m1;->k()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/m1;

    invoke-virtual {v5}, Landroidx/core/view/m1;->j()I

    move-result v5

    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/m1;

    invoke-virtual {v7}, Landroidx/core/view/m1;->h()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v4, v6, v5, v7}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object v2

    new-instance v4, Landroidx/core/view/m1$b;

    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/m1;

    invoke-direct {v4, v5}, Landroidx/core/view/m1$b;-><init>(Landroidx/core/view/m1;)V

    invoke-virtual {v4, v2}, Landroidx/core/view/m1$b;->c(Landroidx/core/graphics/b;)Landroidx/core/view/m1$b;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/m1$b;->a()Landroidx/core/view/m1;

    move-result-object v2

    :goto_be
    iput-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/m1;

    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/view/m1;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/m1;

    invoke-virtual {v2, v4}, Landroidx/core/view/m1;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_df

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/m1;

    iput-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/view/m1;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-static {v4, v2}, Landroidx/core/view/h0;->d(Landroid/view/View;Landroidx/core/view/m1;)Landroidx/core/view/m1;

    :cond_df
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ContentFrameLayout;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v2, 0x10

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eqz p1, :cond_18

    if-nez p4, :cond_7

    goto :goto_18

    :cond_7
    invoke-direct {p0, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B(F)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p()V

    goto :goto_14

    :cond_11
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A()V

    :goto_14
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Z

    return p1

    :cond_18
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->I:Landroidx/core/view/c0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/c0;->b(Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->b()V

    :cond_15
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_10

    :cond_d
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Z

    if-nez p1, :cond_19

    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_16

    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y()V

    goto :goto_19

    :cond_16
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x()V

    :cond_19
    :goto_19
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    if-eqz p1, :cond_20

    invoke-interface {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->d()V

    :cond_20
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:I

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_19

    const/4 v2, 0x1

    :cond_19
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    if-eqz p1, :cond_32

    xor-int/lit8 v3, v2, 0x1

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->e(Z)V

    if-nez v1, :cond_2d

    if-nez v2, :cond_27

    goto :goto_2d

    :cond_27
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    invoke-interface {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->f()V

    goto :goto_32

    :cond_2d
    :goto_2d
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    invoke-interface {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->a()V

    :cond_32
    :goto_32
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_3d

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    if-eqz p1, :cond_3d

    invoke-static {p0}, Landroidx/core/view/h0;->E(Landroid/view/View;)V

    :cond_3d
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:I

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->c(I)V

    :cond_c
    return-void
.end method

.method protected r()Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    .registers 3

    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;-><init>(II)V

    return-object v0
.end method

.method public s(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public setActionBarHideOffset(I)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:I

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$d;->c(I)V

    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:I

    if-eqz p1, :cond_19

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    invoke-static {p0}, Landroidx/core/view/h0;->E(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eq p1, v0, :cond_f

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    :cond_f
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/n0;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/n0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(I)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/n0;->p(I)V

    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 3

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    return-void
.end method

.method public setShowingForActionMode(Z)V
    .registers 2

    return-void
.end method

.method public setUiOptions(I)V
    .registers 2

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/n0;->setWindowCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/n0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method u()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->G:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_11
    return-void
.end method

.method public w()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    return v0
.end method

.method z()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ContentFrameLayout;

    if-nez v0, :cond_24

    sget v0, Lc/f;->b:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Landroidx/appcompat/widget/ContentFrameLayout;

    sget v0, Lc/f;->c:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ActionBarContainer;

    sget v0, Lc/f;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t(Landroid/view/View;)Landroidx/appcompat/widget/n0;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/n0;

    :cond_24
    return-void
.end method
