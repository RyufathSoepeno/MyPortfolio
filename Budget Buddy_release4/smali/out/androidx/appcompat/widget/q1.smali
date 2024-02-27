.class Landroidx/appcompat/widget/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static n:Landroidx/appcompat/widget/q1;

.field private static o:Landroidx/appcompat/widget/q1;


# instance fields
.field private final e:Landroid/view/View;

.field private final f:Ljava/lang/CharSequence;

.field private final g:I

.field private final h:Ljava/lang/Runnable;

.field private final i:Ljava/lang/Runnable;

.field private j:I

.field private k:I

.field private l:Landroidx/appcompat/widget/r1;

.field private m:Z


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/widget/q1$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/q1$a;-><init>(Landroidx/appcompat/widget/q1;)V

    iput-object v0, p0, Landroidx/appcompat/widget/q1;->h:Ljava/lang/Runnable;

    new-instance v0, Landroidx/appcompat/widget/q1$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/q1$b;-><init>(Landroidx/appcompat/widget/q1;)V

    iput-object v0, p0, Landroidx/appcompat/widget/q1;->i:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    iput-object p2, p0, Landroidx/appcompat/widget/q1;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/view/e1;->a(Landroid/view/ViewConfiguration;)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/q1;->g:I

    invoke-direct {p0}, Landroidx/appcompat/widget/q1;->b()V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/q1;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .registers 2

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/appcompat/widget/q1;->j:I

    iput v0, p0, Landroidx/appcompat/widget/q1;->k:I

    return-void
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/q1;->h:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static e(Landroidx/appcompat/widget/q1;)V
    .registers 2

    sget-object v0, Landroidx/appcompat/widget/q1;->n:Landroidx/appcompat/widget/q1;

    if-eqz v0, :cond_7

    invoke-direct {v0}, Landroidx/appcompat/widget/q1;->a()V

    :cond_7
    sput-object p0, Landroidx/appcompat/widget/q1;->n:Landroidx/appcompat/widget/q1;

    if-eqz p0, :cond_e

    invoke-direct {p0}, Landroidx/appcompat/widget/q1;->d()V

    :cond_e
    return-void
.end method

.method public static f(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    sget-object v0, Landroidx/appcompat/widget/q1;->n:Landroidx/appcompat/widget/q1;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    if-ne v0, p0, :cond_c

    invoke-static {v1}, Landroidx/appcompat/widget/q1;->e(Landroidx/appcompat/widget/q1;)V

    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object p1, Landroidx/appcompat/widget/q1;->o:Landroidx/appcompat/widget/q1;

    if-eqz p1, :cond_1d

    iget-object v0, p1, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    if-ne v0, p0, :cond_1d

    invoke-virtual {p1}, Landroidx/appcompat/widget/q1;->c()V

    :cond_1d
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_2d

    :cond_28
    new-instance v0, Landroidx/appcompat/widget/q1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/q1;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_2d
    return-void
.end method

.method private h(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Landroidx/appcompat/widget/q1;->j:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/q1;->g:I

    if-gt v1, v2, :cond_24

    iget v1, p0, Landroidx/appcompat/widget/q1;->k:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/q1;->g:I

    if-gt v1, v2, :cond_24

    const/4 p1, 0x0

    return p1

    :cond_24
    iput v0, p0, Landroidx/appcompat/widget/q1;->j:I

    iput p1, p0, Landroidx/appcompat/widget/q1;->k:I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method c()V
    .registers 4

    sget-object v0, Landroidx/appcompat/widget/q1;->o:Landroidx/appcompat/widget/q1;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_20

    sput-object v1, Landroidx/appcompat/widget/q1;->o:Landroidx/appcompat/widget/q1;

    iget-object v0, p0, Landroidx/appcompat/widget/q1;->l:Landroidx/appcompat/widget/r1;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroidx/appcompat/widget/r1;->c()V

    iput-object v1, p0, Landroidx/appcompat/widget/q1;->l:Landroidx/appcompat/widget/r1;

    invoke-direct {p0}, Landroidx/appcompat/widget/q1;->b()V

    iget-object v0, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_20

    :cond_19
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    sget-object v0, Landroidx/appcompat/widget/q1;->n:Landroidx/appcompat/widget/q1;

    if-ne v0, p0, :cond_27

    invoke-static {v1}, Landroidx/appcompat/widget/q1;->e(Landroidx/appcompat/widget/q1;)V

    :cond_27
    iget-object v0, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/q1;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method g(Z)V
    .registers 9

    iget-object v0, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/h0;->v(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/appcompat/widget/q1;->e(Landroidx/appcompat/widget/q1;)V

    sget-object v0, Landroidx/appcompat/widget/q1;->o:Landroidx/appcompat/widget/q1;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/appcompat/widget/q1;->c()V

    :cond_14
    sput-object p0, Landroidx/appcompat/widget/q1;->o:Landroidx/appcompat/widget/q1;

    iput-boolean p1, p0, Landroidx/appcompat/widget/q1;->m:Z

    new-instance v1, Landroidx/appcompat/widget/r1;

    iget-object p1, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/appcompat/widget/r1;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/q1;->l:Landroidx/appcompat/widget/r1;

    iget-object v2, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    iget v3, p0, Landroidx/appcompat/widget/q1;->j:I

    iget v4, p0, Landroidx/appcompat/widget/q1;->k:I

    iget-boolean v5, p0, Landroidx/appcompat/widget/q1;->m:Z

    iget-object v6, p0, Landroidx/appcompat/widget/q1;->f:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/r1;->e(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean p1, p0, Landroidx/appcompat/widget/q1;->m:Z

    if-eqz p1, :cond_3e

    const-wide/16 v0, 0x9c4

    goto :goto_53

    :cond_3e
    iget-object p1, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/h0;->s(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_4b

    const-wide/16 v0, 0xbb8

    goto :goto_4d

    :cond_4b
    const-wide/16 v0, 0x3a98

    :goto_4d
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    :goto_53
    iget-object p1, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/q1;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/q1;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object p1, p0, Landroidx/appcompat/widget/q1;->l:Landroidx/appcompat/widget/r1;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Landroidx/appcompat/widget/q1;->m:Z

    if-eqz p1, :cond_a

    return v0

    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_38

    const/16 p2, 0xa

    if-eq p1, p2, :cond_31

    goto :goto_4d

    :cond_31
    invoke-direct {p0}, Landroidx/appcompat/widget/q1;->b()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/q1;->c()V

    goto :goto_4d

    :cond_38
    iget-object p1, p0, Landroidx/appcompat/widget/q1;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Landroidx/appcompat/widget/q1;->l:Landroidx/appcompat/widget/r1;

    if-nez p1, :cond_4d

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/q1;->h(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4d

    invoke-static {p0}, Landroidx/appcompat/widget/q1;->e(Landroidx/appcompat/widget/q1;)V

    :cond_4d
    :goto_4d
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/q1;->j:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/appcompat/widget/q1;->k:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q1;->g(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/q1;->c()V

    return-void
.end method
