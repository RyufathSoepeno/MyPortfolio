.class public Lio/flutter/plugin/platform/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/platform/p;


# static fields
.field private static w:[Ljava/lang/Class;


# instance fields
.field private final a:Lio/flutter/plugin/platform/l;

.field private b:Lio/flutter/embedding/android/a;

.field private c:Landroid/content/Context;

.field private d:Lio/flutter/embedding/android/u;

.field private e:Lio/flutter/view/r;

.field private f:Lio/flutter/plugin/editing/m;

.field private g:Lr0/l;

.field private final h:Lio/flutter/plugin/platform/a;

.field final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lio/flutter/plugin/platform/w;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/plugin/platform/i;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Li0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/plugin/platform/b;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/plugin/platform/o;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Z

.field private q:Z

.field private final r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lio/flutter/embedding/android/e0;

.field private u:Z

.field private final v:Lr0/l$g;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/view/SurfaceView;

    aput-object v2, v0, v1

    sput-object v0, Lio/flutter/plugin/platform/v;->w:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/plugin/platform/v;->o:I

    iput-boolean v0, p0, Lio/flutter/plugin/platform/v;->p:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/flutter/plugin/platform/v;->q:Z

    iput-boolean v0, p0, Lio/flutter/plugin/platform/v;->u:Z

    new-instance v0, Lio/flutter/plugin/platform/v$a;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/v$a;-><init>(Lio/flutter/plugin/platform/v;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->v:Lr0/l$g;

    new-instance v0, Lio/flutter/plugin/platform/l;

    invoke-direct {v0}, Lio/flutter/plugin/platform/l;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->a:Lio/flutter/plugin/platform/l;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->i:Ljava/util/HashMap;

    new-instance v0, Lio/flutter/plugin/platform/a;

    invoke-direct {v0}, Lio/flutter/plugin/platform/a;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->h:Lio/flutter/plugin/platform/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->j:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->r:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->s:Ljava/util/HashSet;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->n:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-static {}, Lio/flutter/embedding/android/e0;->a()Lio/flutter/embedding/android/e0;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->t:Lio/flutter/embedding/android/e0;

    return-void
.end method

.method static synthetic A(Lio/flutter/plugin/platform/v;)Z
    .registers 1

    iget-boolean p0, p0, Lio/flutter/plugin/platform/v;->u:Z

    return p0
.end method

.method static synthetic B(Lio/flutter/plugin/platform/v;Lio/flutter/plugin/platform/i;Lr0/l$d;)J
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/v;->K(Lio/flutter/plugin/platform/i;Lr0/l$d;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic C(Lio/flutter/plugin/platform/v;Lio/flutter/plugin/platform/i;Lr0/l$d;)J
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/v;->J(Lio/flutter/plugin/platform/i;Lr0/l$d;)J

    move-result-wide p0

    return-wide p0
.end method

.method private I(Lio/flutter/plugin/platform/i;Lr0/l$d;)V
    .registers 4

    const/16 p1, 0x13

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/v;->T(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Using hybrid composition for platform view: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lr0/l$d;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlatformViewsController"

    invoke-static {p2, p1}, Le0/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private J(Lio/flutter/plugin/platform/i;Lr0/l$d;)J
    .registers 12

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/v;->T(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hosting view in view hierarchy for platform view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lr0/l$d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformViewsController"

    invoke-static {v1, v0}, Le0/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p2, Lr0/l$d;->c:D

    invoke-direct {p0, v0, v1}, Lio/flutter/plugin/platform/v;->w0(D)I

    move-result v0

    iget-wide v1, p2, Lr0/l$d;->d:D

    invoke-direct {p0, v1, v2}, Lio/flutter/plugin/platform/v;->w0(D)I

    move-result v1

    iget-boolean v2, p0, Lio/flutter/plugin/platform/v;->u:Z

    if-eqz v2, :cond_37

    new-instance v2, Lio/flutter/plugin/platform/o;

    iget-object v3, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lio/flutter/plugin/platform/o;-><init>(Landroid/content/Context;)V

    const-wide/16 v3, -0x1

    goto :goto_4a

    :cond_37
    iget-object v2, p0, Lio/flutter/plugin/platform/v;->e:Lio/flutter/view/r;

    invoke-interface {v2}, Lio/flutter/view/r;->a()Lio/flutter/view/r$c;

    move-result-object v2

    new-instance v3, Lio/flutter/plugin/platform/o;

    iget-object v4, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lio/flutter/plugin/platform/o;-><init>(Landroid/content/Context;Lio/flutter/view/r$c;)V

    invoke-interface {v2}, Lio/flutter/view/r$c;->d()J

    move-result-wide v4

    move-object v2, v3

    move-wide v3, v4

    :goto_4a
    iget-object v5, p0, Lio/flutter/plugin/platform/v;->b:Lio/flutter/embedding/android/a;

    invoke-virtual {v2, v5}, Lio/flutter/plugin/platform/o;->m(Lio/flutter/embedding/android/a;)V

    invoke-virtual {v2, v0, v1}, Lio/flutter/plugin/platform/o;->i(II)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-wide v6, p2, Lr0/l$d;->e:D

    invoke-direct {p0, v6, v7}, Lio/flutter/plugin/platform/v;->w0(D)I

    move-result v6

    iget-wide v7, p2, Lr0/l$d;->f:D

    invoke-direct {p0, v7, v8}, Lio/flutter/plugin/platform/v;->w0(D)I

    move-result v7

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v5}, Lio/flutter/plugin/platform/o;->j(Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-interface {p1}, Lio/flutter/plugin/platform/i;->c()Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lio/flutter/plugin/platform/s;

    invoke-direct {v0, p0, p2}, Lio/flutter/plugin/platform/s;-><init>(Lio/flutter/plugin/platform/v;Lr0/l$d;)V

    invoke-virtual {v2, v0}, Lio/flutter/plugin/platform/o;->k(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->n:Landroid/util/SparseArray;

    iget p2, p2, Lr0/l$d;->a:I

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/v;->f0(Lio/flutter/plugin/platform/i;)V

    return-wide v3
.end method

.method private K(Lio/flutter/plugin/platform/i;Lr0/l$d;)J
    .registers 13

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/v;->T(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hosting view in a virtual display for platform view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lr0/l$d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformViewsController"

    invoke-static {v1, v0}, Le0/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->e:Lio/flutter/view/r;

    invoke-interface {v0}, Lio/flutter/view/r;->a()Lio/flutter/view/r$c;

    move-result-object v0

    iget-wide v1, p2, Lr0/l$d;->c:D

    invoke-direct {p0, v1, v2}, Lio/flutter/plugin/platform/v;->w0(D)I

    move-result v5

    iget-wide v1, p2, Lr0/l$d;->d:D

    invoke-direct {p0, v1, v2}, Lio/flutter/plugin/platform/v;->w0(D)I

    move-result v6

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->h:Lio/flutter/plugin/platform/a;

    iget v7, p2, Lr0/l$d;->a:I

    new-instance v9, Lio/flutter/plugin/platform/t;

    invoke-direct {v9, p0, p2}, Lio/flutter/plugin/platform/t;-><init>(Lio/flutter/plugin/platform/v;Lr0/l$d;)V

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, v0

    invoke-static/range {v1 .. v9}, Lio/flutter/plugin/platform/w;->a(Landroid/content/Context;Lio/flutter/plugin/platform/a;Lio/flutter/plugin/platform/i;Lio/flutter/view/r$c;IIILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)Lio/flutter/plugin/platform/w;

    move-result-object v1

    if-eqz v1, :cond_60

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->i:Ljava/util/HashMap;

    iget p2, p2, Lr0/l$d;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/flutter/plugin/platform/i;->c()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/plugin/platform/v;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lio/flutter/view/r$c;->d()J

    move-result-wide p1

    return-wide p1

    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed creating virtual display for a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lr0/l$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lr0/l$d;->a:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private S()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->v:Lr0/l$g;

    invoke-interface {v1, v0}, Lr0/l$g;->i(I)V

    goto :goto_0

    :cond_15
    return-void
.end method

.method private T(I)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_5

    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to use platform views with API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", required API level is: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private U(Lr0/l$d;)V
    .registers 5

    iget v0, p1, Lr0/l$d;->g:I

    invoke-static {v0}, Lio/flutter/plugin/platform/v;->y0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a view with unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lr0/l$d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lr0/l$d;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private V(Z)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_43

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/plugin/platform/b;

    iget-object v5, p0, Lio/flutter/plugin/platform/v;->r:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v2, v4}, Lio/flutter/embedding/android/u;->n(Lio/flutter/embedding/android/m;)V

    invoke-virtual {v4}, Lio/flutter/embedding/android/m;->d()Z

    move-result v2

    and-int/2addr p1, v2

    goto :goto_40

    :cond_31
    iget-boolean v2, p0, Lio/flutter/plugin/platform/v;->p:Z

    if-nez v2, :cond_38

    invoke-virtual {v4}, Lio/flutter/embedding/android/m;->a()V

    :cond_38
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_43
    const/4 v1, 0x0

    :goto_44
    iget-object v2, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lio/flutter/plugin/platform/v;->s:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    if-nez p1, :cond_6c

    iget-boolean v2, p0, Lio/flutter/plugin/platform/v;->q:Z

    if-nez v2, :cond_70

    :cond_6c
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_73

    :cond_70
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_76
    return-void
.end method

.method private W()F
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private Z()V
    .registers 2

    iget-boolean v0, p0, Lio/flutter/plugin/platform/v;->q:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lio/flutter/plugin/platform/v;->p:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v0}, Lio/flutter/embedding/android/u;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/plugin/platform/v;->p:Z

    :cond_10
    return-void
.end method

.method private synthetic a0(Lr0/l$d;Landroid/view/View;Z)V
    .registers 4

    if-eqz p3, :cond_a

    iget-object p2, p0, Lio/flutter/plugin/platform/v;->g:Lr0/l;

    iget p1, p1, Lr0/l$d;->a:I

    invoke-virtual {p2, p1}, Lr0/l;->d(I)V

    goto :goto_13

    :cond_a
    iget-object p2, p0, Lio/flutter/plugin/platform/v;->f:Lio/flutter/plugin/editing/m;

    if-eqz p2, :cond_13

    iget p1, p1, Lr0/l$d;->a:I

    invoke-virtual {p2, p1}, Lio/flutter/plugin/editing/m;->l(I)V

    :cond_13
    :goto_13
    return-void
.end method

.method private synthetic b0(Lr0/l$d;Landroid/view/View;Z)V
    .registers 4

    if-eqz p3, :cond_9

    iget-object p2, p0, Lio/flutter/plugin/platform/v;->g:Lr0/l;

    iget p1, p1, Lr0/l$d;->a:I

    invoke-virtual {p2, p1}, Lr0/l;->d(I)V

    :cond_9
    return-void
.end method

.method private synthetic c0(ILandroid/view/View;Z)V
    .registers 4

    if-eqz p3, :cond_8

    iget-object p2, p0, Lio/flutter/plugin/platform/v;->g:Lr0/l;

    invoke-virtual {p2, p1}, Lr0/l;->d(I)V

    goto :goto_f

    :cond_8
    iget-object p2, p0, Lio/flutter/plugin/platform/v;->f:Lio/flutter/plugin/editing/m;

    if-eqz p2, :cond_f

    invoke-virtual {p2, p1}, Lio/flutter/plugin/editing/m;->l(I)V

    :cond_f
    :goto_f
    return-void
.end method

.method private synthetic d0()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/v;->V(Z)V

    return-void
.end method

.method public static synthetic e(Lio/flutter/plugin/platform/v;)V
    .registers 1

    invoke-direct {p0}, Lio/flutter/plugin/platform/v;->d0()V

    return-void
.end method

.method private e0(Lio/flutter/plugin/platform/w;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->f:Lio/flutter/plugin/editing/m;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lio/flutter/plugin/editing/m;->u()V

    invoke-virtual {p1}, Lio/flutter/plugin/platform/w;->f()V

    return-void
.end method

.method public static synthetic f(Lio/flutter/plugin/platform/v;Lr0/l$d;Landroid/view/View;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugin/platform/v;->b0(Lr0/l$d;Landroid/view/View;Z)V

    return-void
.end method

.method private f0(Lio/flutter/plugin/platform/i;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    if-nez v0, :cond_c

    const-string p1, "PlatformViewsController"

    const-string v0, "null flutterView"

    invoke-static {p1, v0}, Le0/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-interface {p1, v0}, Lio/flutter/plugin/platform/i;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lio/flutter/plugin/platform/v;Lr0/l$d;Landroid/view/View;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugin/platform/v;->a0(Lr0/l$d;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic h(Lio/flutter/plugin/platform/v;ILandroid/view/View;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugin/platform/v;->c0(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic i(Lio/flutter/plugin/platform/v;I)V
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/v;->T(I)V

    return-void
.end method

.method static synthetic j(Lio/flutter/plugin/platform/v;Lr0/l$d;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/v;->U(Lr0/l$d;)V

    return-void
.end method

.method static synthetic k(Lio/flutter/plugin/platform/v;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic l(Lio/flutter/plugin/platform/v;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic m(Lio/flutter/plugin/platform/v;D)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/v;->w0(D)I

    move-result p0

    return p0
.end method

.method static synthetic n(Lio/flutter/plugin/platform/v;)F
    .registers 1

    invoke-direct {p0}, Lio/flutter/plugin/platform/v;->W()F

    move-result p0

    return p0
.end method

.method private static n0(Ljava/lang/Object;F)Landroid/view/MotionEvent$PointerCoords;
    .registers 5

    check-cast p0, Ljava/util/List;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    const/4 v1, 0x5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    const/4 v1, 0x6

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    const/4 v1, 0x7

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/16 v1, 0x8

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float p0, v1

    mul-float p0, p0, p1

    iput p0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return-object v0
.end method

.method static synthetic o(Lio/flutter/plugin/platform/v;Lio/flutter/plugin/platform/w;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/v;->e0(Lio/flutter/plugin/platform/w;)V

    return-void
.end method

.method private static o0(Ljava/lang/Object;F)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "F)",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lio/flutter/plugin/platform/v;->n0(Ljava/lang/Object;F)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method static synthetic p(Lio/flutter/plugin/platform/v;D)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/v;->t0(D)I

    move-result p0

    return p0
.end method

.method private static p0(Ljava/lang/Object;)Landroid/view/MotionEvent$PointerProperties;
    .registers 3

    check-cast p0, Ljava/util/List;

    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    return-object v0
.end method

.method static synthetic q(Lio/flutter/plugin/platform/v;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    return-object p0
.end method

.method private static q0(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/plugin/platform/v;->p0(Ljava/lang/Object;)Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method static synthetic r(I)Z
    .registers 1

    invoke-static {p0}, Lio/flutter/plugin/platform/v;->y0(I)Z

    move-result p0

    return p0
.end method

.method private r0()V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    if-nez v0, :cond_c

    const-string v0, "PlatformViewsController"

    const-string v1, "removeOverlaySurfaces called while flutter view is null"

    invoke-static {v0, v1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_25
    iget-object v0, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method static synthetic s(Lio/flutter/plugin/platform/v;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/flutter/plugin/platform/v;->q:Z

    return p1
.end method

.method static synthetic t(Lio/flutter/plugin/platform/v;Lio/flutter/plugin/platform/w;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/v;->x0(Lio/flutter/plugin/platform/w;)V

    return-void
.end method

.method private t0(D)I
    .registers 4

    invoke-direct {p0}, Lio/flutter/plugin/platform/v;->W()F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/flutter/plugin/platform/v;->u0(DF)I

    move-result p1

    return p1
.end method

.method static synthetic u(Lio/flutter/plugin/platform/v;Lio/flutter/plugin/platform/i;Lr0/l$d;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/v;->I(Lio/flutter/plugin/platform/i;Lr0/l$d;)V

    return-void
.end method

.method private u0(DF)I
    .registers 6

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method static synthetic v(Lio/flutter/plugin/platform/v;DF)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugin/platform/v;->u0(DF)I

    move-result p0

    return p0
.end method

.method static synthetic w(Lio/flutter/plugin/platform/v;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lio/flutter/plugin/platform/v;->n:Landroid/util/SparseArray;

    return-object p0
.end method

.method private w0(D)I
    .registers 5

    invoke-direct {p0}, Lio/flutter/plugin/platform/v;->W()F

    move-result v0

    float-to-double v0, v0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method static synthetic x(Lio/flutter/plugin/platform/v;)Lio/flutter/view/r;
    .registers 1

    iget-object p0, p0, Lio/flutter/plugin/platform/v;->e:Lio/flutter/view/r;

    return-object p0
.end method

.method private x0(Lio/flutter/plugin/platform/w;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->f:Lio/flutter/plugin/editing/m;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lio/flutter/plugin/editing/m;->H()V

    invoke-virtual {p1}, Lio/flutter/plugin/platform/w;->g()V

    return-void
.end method

.method static synthetic y(Lio/flutter/plugin/platform/v;)Lio/flutter/embedding/android/u;
    .registers 1

    iget-object p0, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    return-object p0
.end method

.method private static y0(I)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0
.end method

.method static synthetic z()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Lio/flutter/plugin/platform/v;->w:[Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public D(Landroid/content/Context;Lio/flutter/view/r;Lf0/a;)V
    .registers 5

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    if-nez v0, :cond_15

    iput-object p1, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    iput-object p2, p0, Lio/flutter/plugin/platform/v;->e:Lio/flutter/view/r;

    new-instance p1, Lr0/l;

    invoke-direct {p1, p3}, Lr0/l;-><init>(Lf0/a;)V

    iput-object p1, p0, Lio/flutter/plugin/platform/v;->g:Lr0/l;

    iget-object p2, p0, Lio/flutter/plugin/platform/v;->v:Lr0/l$g;

    invoke-virtual {p1, p2}, Lr0/l;->e(Lr0/l$g;)V

    return-void

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "A PlatformViewsController can only be attached to a single output target.\nattach was called while the PlatformViewsController was already attached."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public E(Lio/flutter/plugin/editing/m;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/plugin/platform/v;->f:Lio/flutter/plugin/editing/m;

    return-void
.end method

.method public F(Lq0/a;)V
    .registers 4

    new-instance v0, Lio/flutter/embedding/android/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lio/flutter/embedding/android/a;-><init>(Lq0/a;Z)V

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->b:Lio/flutter/embedding/android/a;

    return-void
.end method

.method public G(Lio/flutter/embedding/android/u;)V
    .registers 5

    iput-object p1, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lio/flutter/plugin/platform/v;->n:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->n:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/o;

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/a;

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_35
    :goto_35
    iget-object v0, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_4d

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/i;

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-interface {v0, v1}, Lio/flutter/plugin/platform/i;->d(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_35

    :cond_4d
    return-void
.end method

.method public H(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lio/flutter/plugin/platform/v;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    :cond_11
    iget-object v0, p0, Lio/flutter/plugin/platform/v;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne v0, p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public L()Lio/flutter/embedding/engine/FlutterOverlaySurface;
    .registers 6

    new-instance v0, Lio/flutter/plugin/platform/b;

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lio/flutter/plugin/platform/v;->h:Lio/flutter/plugin/platform/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/plugin/platform/b;-><init>(Landroid/content/Context;IILio/flutter/plugin/platform/a;)V

    invoke-virtual {p0, v0}, Lio/flutter/plugin/platform/v;->M(Lio/flutter/plugin/platform/b;)Lio/flutter/embedding/engine/FlutterOverlaySurface;

    move-result-object v0

    return-object v0
.end method

.method public M(Lio/flutter/plugin/platform/b;)Lio/flutter/embedding/engine/FlutterOverlaySurface;
    .registers 4

    iget v0, p0, Lio/flutter/plugin/platform/v;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/flutter/plugin/platform/v;->o:I

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lio/flutter/embedding/engine/FlutterOverlaySurface;

    invoke-virtual {p1}, Lio/flutter/embedding/android/m;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lio/flutter/embedding/engine/FlutterOverlaySurface;-><init>(ILandroid/view/Surface;)V

    return-object v1
.end method

.method public N(Lr0/l$d;Z)Lio/flutter/plugin/platform/i;
    .registers 6

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->a:Lio/flutter/plugin/platform/l;

    iget-object v1, p1, Lr0/l$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/l;->a(Ljava/lang/String;)Lio/flutter/plugin/platform/j;

    move-result-object v0

    if-eqz v0, :cond_49

    const/4 v1, 0x0

    iget-object v2, p1, Lr0/l$d;->i:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Lio/flutter/plugin/platform/j;->b()Ls0/h;

    move-result-object v1

    iget-object v2, p1, Lr0/l$d;->i:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ls0/h;->b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    :cond_19
    if-eqz p2, :cond_23

    new-instance p2, Landroid/content/MutableContextWrapper;

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    invoke-direct {p2, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_25

    :cond_23
    iget-object p2, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    :goto_25
    iget v2, p1, Lr0/l$d;->a:I

    invoke-virtual {v0, p2, v2, v1}, Lio/flutter/plugin/platform/j;->a(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/i;

    move-result-object p2

    invoke-interface {p2}, Lio/flutter/plugin/platform/i;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_41

    iget v1, p1, Lr0/l$d;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    iget p1, p1, Lr0/l$d;->a:I

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p2}, Lio/flutter/plugin/platform/v;->f0(Lio/flutter/plugin/platform/i;)V

    return-object p2

    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PlatformView#getView() returned null, but an Android view reference was expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to create a platform view of unregistered type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lr0/l$d;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public O()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/b;

    invoke-virtual {v1}, Lio/flutter/embedding/android/m;->a()V

    invoke-virtual {v1}, Lio/flutter/embedding/android/m;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    return-void
.end method

.method public P()V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->g:Lr0/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lr0/l;->e(Lr0/l$g;)V

    :cond_8
    invoke-virtual {p0}, Lio/flutter/plugin/platform/v;->O()V

    iput-object v1, p0, Lio/flutter/plugin/platform/v;->g:Lr0/l;

    iput-object v1, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    iput-object v1, p0, Lio/flutter/plugin/platform/v;->e:Lio/flutter/view/r;

    return-void
.end method

.method public Q()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lio/flutter/plugin/platform/v;->n:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->n:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/plugin/platform/o;

    iget-object v3, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    iget-object v2, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/a;

    iget-object v3, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_33
    invoke-virtual {p0}, Lio/flutter/plugin/platform/v;->O()V

    invoke-direct {p0}, Lio/flutter/plugin/platform/v;->r0()V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    iput-boolean v0, p0, Lio/flutter/plugin/platform/v;->p:Z

    :goto_3e
    iget-object v1, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_54

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/i;

    invoke-interface {v1}, Lio/flutter/plugin/platform/i;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_54
    return-void
.end method

.method public R()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/v;->f:Lio/flutter/plugin/editing/m;

    return-void
.end method

.method public X()Lio/flutter/plugin/platform/k;
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->a:Lio/flutter/plugin/platform/l;

    return-object v0
.end method

.method Y(I)V
    .registers 7

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/i;

    if-eqz v0, :cond_5c

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    return-void

    :cond_13
    invoke-interface {v0}, Lio/flutter/plugin/platform/i;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4c

    new-instance v1, Li0/a;

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iget-object v4, p0, Lio/flutter/plugin/platform/v;->b:Lio/flutter/embedding/android/a;

    invoke-direct {v1, v2, v3, v4}, Li0/a;-><init>(Landroid/content/Context;FLio/flutter/embedding/android/a;)V

    new-instance v2, Lio/flutter/plugin/platform/q;

    invoke-direct {v2, p0, p1}, Lio/flutter/plugin/platform/q;-><init>(Lio/flutter/plugin/platform/v;I)V

    invoke-virtual {v1, v2}, Li0/a;->setOnDescendantFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The Android view returned from PlatformView#getView() was already added to a parent view."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "PlatformView#getView() returned null, but an Android view reference was expected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Platform view hasn\'t been initialized from the platform view channel."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lio/flutter/view/f;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->h:Lio/flutter/plugin/platform/a;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/a;->c(Lio/flutter/view/f;)V

    return-void
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(I)Landroid/view/View;
    .registers 3

    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/v;->b(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/w;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/w;->e()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_17
    iget-object v0, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/i;

    if-nez p1, :cond_23

    const/4 p1, 0x0

    return-object p1

    :cond_23
    invoke-interface {p1}, Lio/flutter/plugin/platform/i;->c()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->h:Lio/flutter/plugin/platform/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/a;->c(Lio/flutter/view/f;)V

    return-void
.end method

.method public g0()V
    .registers 1

    return-void
.end method

.method public h0()V
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public i0()V
    .registers 1

    invoke-direct {p0}, Lio/flutter/plugin/platform/v;->S()V

    return-void
.end method

.method public j0(IIIII)V
    .registers 8

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-direct {p0}, Lio/flutter/plugin/platform/v;->Z()V

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/b;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1e
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object p2, p0, Lio/flutter/plugin/platform/v;->r:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3b
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The overlay surface (id:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") doesn\'t exist"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public k0(IIIIIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;)V
    .registers 16

    invoke-direct {p0}, Lio/flutter/plugin/platform/v;->Z()V

    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/v;->Y(I)V

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/a;

    move-object v1, v0

    move-object v2, p8

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Li0/a;->a(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;IIII)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p6, p7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lio/flutter/plugin/platform/v;->k:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/flutter/plugin/platform/i;

    invoke-interface {p3}, Lio/flutter/plugin/platform/i;->c()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_37

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3}, Landroid/view/View;->bringToFront()V

    :cond_37
    iget-object p2, p0, Lio/flutter/plugin/platform/v;->s:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l0()V
    .registers 3

    iget-boolean v0, p0, Lio/flutter/plugin/platform/v;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lio/flutter/plugin/platform/v;->p:Z

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    new-instance v1, Lio/flutter/plugin/platform/r;

    invoke-direct {v1, p0}, Lio/flutter/plugin/platform/r;-><init>(Lio/flutter/plugin/platform/v;)V

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/u;->D(Ljava/lang/Runnable;)V

    return-void

    :cond_1a
    iget-boolean v0, p0, Lio/flutter/plugin/platform/v;->p:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lio/flutter/plugin/platform/v;->d:Lio/flutter/embedding/android/u;

    invoke-virtual {v0}, Lio/flutter/embedding/android/u;->k()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    :cond_27
    invoke-direct {p0, v1}, Lio/flutter/plugin/platform/v;->V(Z)V

    return-void
.end method

.method public m0()V
    .registers 1

    invoke-direct {p0}, Lio/flutter/plugin/platform/v;->S()V

    return-void
.end method

.method public s0(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/flutter/plugin/platform/v;->u:Z

    return-void
.end method

.method public v0(FLr0/l$f;Z)Landroid/view/MotionEvent;
    .registers 24

    move-object/from16 v0, p2

    iget-wide v1, v0, Lr0/l$f;->p:J

    invoke-static {v1, v2}, Lio/flutter/embedding/android/e0$a;->c(J)Lio/flutter/embedding/android/e0$a;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v3, v2, Lio/flutter/plugin/platform/v;->t:Lio/flutter/embedding/android/e0;

    invoke-virtual {v3, v1}, Lio/flutter/embedding/android/e0;->b(Lio/flutter/embedding/android/e0$a;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v3, v0, Lr0/l$f;->f:Ljava/lang/Object;

    invoke-static {v3}, Lio/flutter/plugin/platform/v;->q0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lr0/l$f;->e:I

    new-array v4, v4, [Landroid/view/MotionEvent$PointerProperties;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, [Landroid/view/MotionEvent$PointerProperties;

    iget-object v3, v0, Lr0/l$f;->g:Ljava/lang/Object;

    move/from16 v4, p1

    invoke-static {v3, v4}, Lio/flutter/plugin/platform/v;->o0(Ljava/lang/Object;F)Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lr0/l$f;->e:I

    new-array v4, v4, [Landroid/view/MotionEvent$PointerCoords;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, [Landroid/view/MotionEvent$PointerCoords;

    if-nez p3, :cond_69

    if-eqz v1, :cond_69

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget v8, v0, Lr0/l$f;->d:I

    iget v9, v0, Lr0/l$f;->e:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    :cond_69
    iget-object v1, v0, Lr0/l$f;->b:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v1, v0, Lr0/l$f;->c:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iget v8, v0, Lr0/l$f;->d:I

    iget v9, v0, Lr0/l$f;->e:I

    iget v12, v0, Lr0/l$f;->h:I

    iget v13, v0, Lr0/l$f;->i:I

    iget v14, v0, Lr0/l$f;->j:F

    iget v15, v0, Lr0/l$f;->k:F

    iget v1, v0, Lr0/l$f;->l:I

    iget v3, v0, Lr0/l$f;->m:I

    iget v2, v0, Lr0/l$f;->n:I

    iget v0, v0, Lr0/l$f;->o:I

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v2

    move/from16 v19, v0

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method
