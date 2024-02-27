.class public Landroidx/core/view/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/h0$k;,
        Landroidx/core/view/h0$n;,
        Landroidx/core/view/h0$h;,
        Landroidx/core/view/h0$i;,
        Landroidx/core/view/h0$g;,
        Landroidx/core/view/h0$j;,
        Landroidx/core/view/h0$p;,
        Landroidx/core/view/h0$o;,
        Landroidx/core/view/h0$m;,
        Landroidx/core/view/h0$l;,
        Landroidx/core/view/h0$r;,
        Landroidx/core/view/h0$e;,
        Landroidx/core/view/h0$f;,
        Landroidx/core/view/h0$q;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroidx/core/view/i1;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z

.field private static final e:[I

.field private static final f:Landroidx/core/view/e0;

.field private static final g:Landroidx/core/view/h0$e;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/core/view/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    sput-object v0, Landroidx/core/view/h0;->b:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/h0;->d:Z

    const/16 v2, 0x20

    new-array v2, v2, [I

    sget v3, Lm/b;->b:I

    aput v3, v2, v0

    sget v0, Lm/b;->c:I

    aput v0, v2, v1

    sget v0, Lm/b;->n:I

    const/4 v1, 0x2

    aput v0, v2, v1

    sget v0, Lm/b;->y:I

    const/4 v1, 0x3

    aput v0, v2, v1

    sget v0, Lm/b;->B:I

    const/4 v1, 0x4

    aput v0, v2, v1

    sget v0, Lm/b;->C:I

    const/4 v1, 0x5

    aput v0, v2, v1

    sget v0, Lm/b;->D:I

    const/4 v1, 0x6

    aput v0, v2, v1

    sget v0, Lm/b;->E:I

    const/4 v1, 0x7

    aput v0, v2, v1

    sget v0, Lm/b;->F:I

    const/16 v1, 0x8

    aput v0, v2, v1

    sget v0, Lm/b;->G:I

    const/16 v1, 0x9

    aput v0, v2, v1

    sget v0, Lm/b;->d:I

    const/16 v1, 0xa

    aput v0, v2, v1

    sget v0, Lm/b;->e:I

    const/16 v1, 0xb

    aput v0, v2, v1

    sget v0, Lm/b;->f:I

    const/16 v1, 0xc

    aput v0, v2, v1

    sget v0, Lm/b;->g:I

    const/16 v1, 0xd

    aput v0, v2, v1

    sget v0, Lm/b;->h:I

    const/16 v1, 0xe

    aput v0, v2, v1

    sget v0, Lm/b;->i:I

    const/16 v1, 0xf

    aput v0, v2, v1

    sget v0, Lm/b;->j:I

    const/16 v1, 0x10

    aput v0, v2, v1

    sget v0, Lm/b;->k:I

    const/16 v1, 0x11

    aput v0, v2, v1

    sget v0, Lm/b;->l:I

    const/16 v1, 0x12

    aput v0, v2, v1

    sget v0, Lm/b;->m:I

    const/16 v1, 0x13

    aput v0, v2, v1

    sget v0, Lm/b;->o:I

    const/16 v1, 0x14

    aput v0, v2, v1

    sget v0, Lm/b;->p:I

    const/16 v1, 0x15

    aput v0, v2, v1

    sget v0, Lm/b;->q:I

    const/16 v1, 0x16

    aput v0, v2, v1

    sget v0, Lm/b;->r:I

    const/16 v1, 0x17

    aput v0, v2, v1

    sget v0, Lm/b;->s:I

    const/16 v1, 0x18

    aput v0, v2, v1

    sget v0, Lm/b;->t:I

    const/16 v1, 0x19

    aput v0, v2, v1

    sget v0, Lm/b;->u:I

    const/16 v1, 0x1a

    aput v0, v2, v1

    sget v0, Lm/b;->v:I

    const/16 v1, 0x1b

    aput v0, v2, v1

    sget v0, Lm/b;->w:I

    const/16 v1, 0x1c

    aput v0, v2, v1

    sget v0, Lm/b;->x:I

    const/16 v1, 0x1d

    aput v0, v2, v1

    sget v0, Lm/b;->z:I

    const/16 v1, 0x1e

    aput v0, v2, v1

    sget v0, Lm/b;->A:I

    const/16 v1, 0x1f

    aput v0, v2, v1

    sput-object v2, Landroidx/core/view/h0;->e:[I

    new-instance v0, Landroidx/core/view/g0;

    invoke-direct {v0}, Landroidx/core/view/g0;-><init>()V

    sput-object v0, Landroidx/core/view/h0;->f:Landroidx/core/view/e0;

    new-instance v0, Landroidx/core/view/h0$e;

    invoke-direct {v0}, Landroidx/core/view/h0$e;-><init>()V

    sput-object v0, Landroidx/core/view/h0;->g:Landroidx/core/view/h0$e;

    return-void
.end method

.method private static A()Landroidx/core/view/h0$f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/h0$f<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/core/view/h0$b;

    sget v1, Lm/b;->K:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x8

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/h0$b;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static B(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$h;->k(Landroid/view/View;)V

    return-void
.end method

.method public static C(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/h0$h;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static D(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/h0$h;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static E(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$k;->c(Landroid/view/View;)V

    return-void
.end method

.method public static F(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    invoke-static/range {p0 .. p6}, Landroidx/core/view/h0$o;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_9
    return-void
.end method

.method private static G()Landroidx/core/view/h0$f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/h0$f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/core/view/h0$a;

    sget v1, Lm/b;->M:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/h0$a;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static H(Landroid/view/View;Landroidx/core/view/a;)V
    .registers 3

    if-nez p1, :cond_f

    invoke-static {p0}, Landroidx/core/view/h0;->g(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Landroidx/core/view/a$a;

    if-eqz v0, :cond_f

    new-instance p1, Landroidx/core/view/a;

    invoke-direct {p1}, Landroidx/core/view/a;-><init>()V

    :cond_f
    if-nez p1, :cond_13

    const/4 p1, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Landroidx/core/view/a;->d()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    :goto_17
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static I(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/h0$h;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static J(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, p1}, Landroidx/core/view/h0$l;->q(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    const/16 p1, 0x15

    if-ne v0, p1, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/h0$l;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Landroidx/core/view/h0$l;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz p1, :cond_31

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2e
    invoke-static {p0, p1}, Landroidx/core/view/h0$h;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_31
    return-void
.end method

.method public static K(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, p1}, Landroidx/core/view/h0$l;->r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    const/16 p1, 0x15

    if-ne v0, p1, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/h0$l;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Landroidx/core/view/h0$l;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz p1, :cond_31

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2e
    invoke-static {p0, p1}, Landroidx/core/view/h0$h;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_31
    return-void
.end method

.method public static L(Landroid/view/View;F)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/h0$l;->s(Landroid/view/View;F)V

    return-void
.end method

.method public static M(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/h0$h;->s(Landroid/view/View;I)V

    return-void
.end method

.method public static N(Landroid/view/View;Landroidx/core/view/d0;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/h0$l;->u(Landroid/view/View;Landroidx/core/view/d0;)V

    return-void
.end method

.method public static O(Landroid/view/View;II)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    invoke-static {p0, p1, p2}, Landroidx/core/view/h0$m;->d(Landroid/view/View;II)V

    :cond_9
    return-void
.end method

.method public static P(Landroid/view/View;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/h0$l;->v(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private static Q(Landroid/view/View;)V
    .registers 4

    invoke-static {p0}, Landroidx/core/view/h0;->m(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/view/h0;->M(Landroid/view/View;I)V

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_e
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_26

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/h0;->m(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroidx/core/view/h0;->M(Landroid/view/View;I)V

    goto :goto_26

    :cond_21
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_e

    :cond_26
    :goto_26
    return-void
.end method

.method private static R()Landroidx/core/view/h0$f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/h0$f<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/core/view/h0$c;

    sget v1, Lm/b;->N:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x40

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/h0$c;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static S(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$l;->z(Landroid/view/View;)V

    return-void
.end method

.method private static a()Landroidx/core/view/h0$f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/h0$f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/core/view/h0$d;

    sget v1, Lm/b;->J:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/h0$d;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static b(Landroid/view/View;)Landroidx/core/view/i1;
    .registers 3

    sget-object v0, Landroidx/core/view/h0;->b:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/view/h0;->b:Ljava/util/WeakHashMap;

    :cond_b
    sget-object v0, Landroidx/core/view/h0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/i1;

    if-nez v0, :cond_1f

    new-instance v0, Landroidx/core/view/i1;

    invoke-direct {v0, p0}, Landroidx/core/view/i1;-><init>(Landroid/view/View;)V

    sget-object v1, Landroidx/core/view/h0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method

.method public static c(Landroid/view/View;Landroidx/core/view/m1;Landroid/graphics/Rect;)Landroidx/core/view/m1;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/core/view/h0$l;->b(Landroid/view/View;Landroidx/core/view/m1;Landroid/graphics/Rect;)Landroidx/core/view/m1;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/View;Landroidx/core/view/m1;)Landroidx/core/view/m1;
    .registers 4

    invoke-virtual {p1}, Landroidx/core/view/m1;->u()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {p0, v0}, Landroidx/core/view/h0$k;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v1, p0}, Landroidx/core/view/m1;->w(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/m1;

    move-result-object p0

    return-object p0

    :cond_15
    return-object p1
.end method

.method static e(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {p0}, Landroidx/core/view/h0$r;->a(Landroid/view/View;)Landroidx/core/view/h0$r;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/h0$r;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static f(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {p0}, Landroidx/core/view/h0$r;->a(Landroid/view/View;)Landroidx/core/view/h0$r;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/h0$r;->f(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private static g(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidx/core/view/h0$o;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Landroidx/core/view/h0;->h(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method private static h(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 5

    sget-boolean v0, Landroidx/core/view/h0;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Landroidx/core/view/h0;->c:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    :try_start_b
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/h0;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1c

    :catchall_19
    sput-boolean v2, Landroidx/core/view/h0;->d:Z

    return-object v1

    :cond_1c
    :goto_1c
    :try_start_1c
    sget-object v0, Landroidx/core/view/h0;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_29

    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2a

    return-object p0

    :cond_29
    return-object v1

    :catchall_2a
    sput-boolean v2, Landroidx/core/view/h0;->d:Z

    return-object v1
.end method

.method public static i(Landroid/view/View;)I
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$j;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static j(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {}, Landroidx/core/view/h0;->A()Landroidx/core/view/h0$f;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/h0$f;->d(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static k(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$l;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$l;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/view/View;)I
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$h;->c(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static n(Landroid/view/View;)I
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$i;->d(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static o(Landroid/view/View;)I
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$h;->d(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static p(Landroid/view/View;)Landroidx/core/view/m1;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidx/core/view/h0$m;->a(Landroid/view/View;)Landroidx/core/view/m1;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Landroidx/core/view/h0$l;->j(Landroid/view/View;)Landroidx/core/view/m1;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {}, Landroidx/core/view/h0;->R()Landroidx/core/view/h0$f;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/h0$f;->d(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static r(Landroid/view/View;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$l;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Landroid/view/View;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/core/view/h0$h;->g(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static t(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$g;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static u(Landroid/view/View;)Z
    .registers 2

    invoke-static {}, Landroidx/core/view/h0;->a()Landroidx/core/view/h0$f;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/h0$f;->d(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static v(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$j;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static w(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/view/h0$j;->c(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static x(Landroid/view/View;)Z
    .registers 2

    invoke-static {}, Landroidx/core/view/h0;->G()Landroidx/core/view/h0$f;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/h0$f;->d(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method static y(Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    invoke-static {p0}, Landroidx/core/view/h0;->j(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    invoke-static {p0}, Landroidx/core/view/h0;->i(Landroid/view/View;)I

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_89

    if-eqz v1, :cond_33

    goto :goto_89

    :cond_33
    if-ne p1, v3, :cond_57

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v1, p1}, Landroidx/core/view/h0$j;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/h0;->j(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_ab

    :cond_57
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :try_start_61
    invoke-static {v0, p0, p0, p1}, Landroidx/core/view/h0$j;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_64
    .catch Ljava/lang/AbstractMethodError; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_ab

    :catch_65
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not fully implement ViewParent"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewCompat"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ab

    :cond_89
    :goto_89
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v1, :cond_90

    goto :goto_92

    :cond_90
    const/16 v3, 0x800

    :goto_92
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v0, p1}, Landroidx/core/view/h0$j;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    if-eqz v1, :cond_a8

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/h0;->j(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Landroidx/core/view/h0;->Q(Landroid/view/View;)V

    :cond_a8
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_ab
    :goto_ab
    return-void
.end method

.method public static z(Landroid/view/View;Landroidx/core/view/m1;)Landroidx/core/view/m1;
    .registers 4

    invoke-virtual {p1}, Landroidx/core/view/m1;->u()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {p0, v0}, Landroidx/core/view/h0$k;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v1, p0}, Landroidx/core/view/m1;->w(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/m1;

    move-result-object p0

    return-object p0

    :cond_15
    return-object p1
.end method
