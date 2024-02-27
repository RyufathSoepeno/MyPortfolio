.class public abstract Ld/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:I = -0x64

.field private static final f:Ll/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/b<",
            "Ljava/lang/ref/WeakReference<",
            "Ld/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ll/b;

    invoke-direct {v0}, Ll/b;-><init>()V

    sput-object v0, Ld/d;->f:Ll/b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld/d;->g:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c(Ld/d;)V
    .registers 4

    sget-object v0, Ld/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Ld/d;->y(Ld/d;)V

    sget-object v1, Ld/d;->f:Ll/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ll/b;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static g(Landroid/app/Activity;Ld/c;)Ld/d;
    .registers 3

    new-instance v0, Ld/f;

    invoke-direct {v0, p0, p1}, Ld/f;-><init>(Landroid/app/Activity;Ld/c;)V

    return-object v0
.end method

.method public static h(Landroid/app/Dialog;Ld/c;)Ld/d;
    .registers 3

    new-instance v0, Ld/f;

    invoke-direct {v0, p0, p1}, Ld/f;-><init>(Landroid/app/Dialog;Ld/c;)V

    return-object v0
.end method

.method public static j()I
    .registers 1

    sget v0, Ld/d;->e:I

    return v0
.end method

.method static x(Ld/d;)V
    .registers 2

    sget-object v0, Ld/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Ld/d;->y(Ld/d;)V

    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private static y(Ld/d;)V
    .registers 4

    sget-object v0, Ld/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ld/d;->f:Ll/b;

    invoke-virtual {v1}, Ll/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/d;

    if-eq v2, p0, :cond_1f

    if-nez v2, :cond_9

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method


# virtual methods
.method public abstract A(I)V
.end method

.method public abstract B(Landroid/view/View;)V
.end method

.method public abstract C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public D(I)V
    .registers 2

    return-void
.end method

.method public abstract E(Ljava/lang/CharSequence;)V
.end method

.method public abstract d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public e(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public f(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0, p1}, Ld/d;->e(Landroid/content/Context;)V

    return-object p1
.end method

.method public abstract i(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public k()I
    .registers 2

    const/16 v0, -0x64

    return v0
.end method

.method public abstract l()Landroid/view/MenuInflater;
.end method

.method public abstract m()Ld/a;
.end method

.method public abstract n()V
.end method

.method public abstract o()V
.end method

.method public abstract p(Landroid/content/res/Configuration;)V
.end method

.method public abstract q(Landroid/os/Bundle;)V
.end method

.method public abstract r()V
.end method

.method public abstract s(Landroid/os/Bundle;)V
.end method

.method public abstract t()V
.end method

.method public abstract u(Landroid/os/Bundle;)V
.end method

.method public abstract v()V
.end method

.method public abstract w()V
.end method

.method public abstract z(I)Z
.end method
