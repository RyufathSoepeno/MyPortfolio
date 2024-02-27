.class public Lio/flutter/plugins/localauth/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/a;
.implements Lk0/a;
.implements Lio/flutter/plugins/localauth/f$h;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lio/flutter/plugins/localauth/AuthenticationHelper;

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Landroidx/lifecycle/f;

.field private e:Landroidx/biometric/i;

.field private f:Landroid/app/KeyguardManager;

.field g:Lio/flutter/plugins/localauth/f$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugins/localauth/f$j<",
            "Lio/flutter/plugins/localauth/f$e;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ls0/l;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/flutter/plugins/localauth/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lio/flutter/plugins/localauth/e$a;

    invoke-direct {v0, p0}, Lio/flutter/plugins/localauth/e$a;-><init>(Lio/flutter/plugins/localauth/e;)V

    iput-object v0, p0, Lio/flutter/plugins/localauth/e;->h:Ls0/l;

    return-void
.end method

.method public static synthetic l(Lio/flutter/plugins/localauth/e;Lio/flutter/plugins/localauth/f$j;Lio/flutter/plugins/localauth/f$d;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/localauth/e;->r(Lio/flutter/plugins/localauth/f$j;Lio/flutter/plugins/localauth/f$d;)V

    return-void
.end method

.method private m()Z
    .registers 4

    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->e:Landroidx/biometric/i;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroidx/biometric/i;->a(I)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method private p()Z
    .registers 4

    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->e:Landroidx/biometric/i;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroidx/biometric/i;->a(I)I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method private synthetic r(Lio/flutter/plugins/localauth/f$j;Lio/flutter/plugins/localauth/f$d;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/localauth/e;->s(Lio/flutter/plugins/localauth/f$j;Lio/flutter/plugins/localauth/f$d;)V

    return-void
.end method

.method private u(Landroid/app/Activity;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lio/flutter/plugins/localauth/e;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroidx/biometric/i;->g(Landroid/content/Context;)Landroidx/biometric/i;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/localauth/e;->e:Landroidx/biometric/i;

    const-string p1, "keyguard"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lio/flutter/plugins/localauth/e;->f:Landroid/app/KeyguardManager;

    return-void
.end method

.method private v(Lio/flutter/plugins/localauth/f$a;)Lio/flutter/plugins/localauth/f$b;
    .registers 3

    new-instance v0, Lio/flutter/plugins/localauth/f$b$a;

    invoke-direct {v0}, Lio/flutter/plugins/localauth/f$b$a;-><init>()V

    invoke-virtual {v0, p1}, Lio/flutter/plugins/localauth/f$b$a;->b(Lio/flutter/plugins/localauth/f$a;)Lio/flutter/plugins/localauth/f$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/plugins/localauth/f$b$a;->a()Lio/flutter/plugins/localauth/f$b;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lk0/c;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->h:Ls0/l;

    invoke-interface {p1, v0}, Lk0/c;->b(Ls0/l;)V

    invoke-interface {p1}, Lk0/c;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/plugins/localauth/e;->u(Landroid/app/Activity;)V

    invoke-static {p1}, Ln0/a;->a(Lk0/c;)Landroidx/lifecycle/f;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/localauth/e;->d:Landroidx/lifecycle/f;

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugins/localauth/e;->d:Landroidx/lifecycle/f;

    iput-object v0, p0, Lio/flutter/plugins/localauth/e;->a:Landroid/app/Activity;

    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0}, Lio/flutter/plugins/localauth/e;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/flutter/plugins/localauth/f$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/flutter/plugins/localauth/e;->e:Landroidx/biometric/i;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroidx/biometric/i;->a(I)I

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Lio/flutter/plugins/localauth/f$a;->f:Lio/flutter/plugins/localauth/f$a;

    invoke-direct {p0, v1}, Lio/flutter/plugins/localauth/e;->v(Lio/flutter/plugins/localauth/f$a;)Lio/flutter/plugins/localauth/f$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v1, p0, Lio/flutter/plugins/localauth/e;->e:Landroidx/biometric/i;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroidx/biometric/i;->a(I)I

    move-result v1

    if-nez v1, :cond_2b

    sget-object v1, Lio/flutter/plugins/localauth/f$a;->g:Lio/flutter/plugins/localauth/f$a;

    invoke-direct {p0, v1}, Lio/flutter/plugins/localauth/e;->v(Lio/flutter/plugins/localauth/f$a;)Lio/flutter/plugins/localauth/f$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Lio/flutter/plugins/localauth/e;->q()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lio/flutter/plugins/localauth/e;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public f(Lj0/a$b;)V
    .registers 2

    invoke-virtual {p1}, Lj0/a$b;->b()Ls0/c;

    move-result-object p1

    invoke-static {p1, p0}, Lio/flutter/plugins/localauth/l;->g(Ls0/c;Lio/flutter/plugins/localauth/f$h;)V

    return-void
.end method

.method public g(Lio/flutter/plugins/localauth/f$c;Lio/flutter/plugins/localauth/f$f;Lio/flutter/plugins/localauth/f$j;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/localauth/f$c;",
            "Lio/flutter/plugins/localauth/f$f;",
            "Lio/flutter/plugins/localauth/f$j<",
            "Lio/flutter/plugins/localauth/f$e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance p1, Lio/flutter/plugins/localauth/f$e$a;

    invoke-direct {p1}, Lio/flutter/plugins/localauth/f$e$a;-><init>()V

    sget-object p2, Lio/flutter/plugins/localauth/f$d;->h:Lio/flutter/plugins/localauth/f$d;

    :goto_f
    invoke-virtual {p1, p2}, Lio/flutter/plugins/localauth/f$e$a;->b(Lio/flutter/plugins/localauth/f$d;)Lio/flutter/plugins/localauth/f$e$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/plugins/localauth/f$e$a;->a()Lio/flutter/plugins/localauth/f$e;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/flutter/plugins/localauth/f$j;->a(Ljava/lang/Object;)V

    return-void

    :cond_1b
    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->a:Landroid/app/Activity;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_66

    :cond_26
    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->a:Landroid/app/Activity;

    instance-of v0, v0, Landroidx/fragment/app/j;

    if-nez v0, :cond_34

    new-instance p1, Lio/flutter/plugins/localauth/f$e$a;

    invoke-direct {p1}, Lio/flutter/plugins/localauth/f$e$a;-><init>()V

    sget-object p2, Lio/flutter/plugins/localauth/f$d;->j:Lio/flutter/plugins/localauth/f$d;

    goto :goto_f

    :cond_34
    invoke-virtual {p0}, Lio/flutter/plugins/localauth/e;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_46

    new-instance p1, Lio/flutter/plugins/localauth/f$e$a;

    invoke-direct {p1}, Lio/flutter/plugins/localauth/f$e$a;-><init>()V

    sget-object p2, Lio/flutter/plugins/localauth/f$d;->k:Lio/flutter/plugins/localauth/f$d;

    goto :goto_f

    :cond_46
    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, p3}, Lio/flutter/plugins/localauth/e;->o(Lio/flutter/plugins/localauth/f$j;)Lio/flutter/plugins/localauth/AuthenticationHelper$a;

    move-result-object p3

    invoke-virtual {p1}, Lio/flutter/plugins/localauth/f$c;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p0}, Lio/flutter/plugins/localauth/e;->n()Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_62

    :cond_61
    const/4 v1, 0x0

    :goto_62
    invoke-virtual {p0, p1, p2, v1, p3}, Lio/flutter/plugins/localauth/e;->t(Lio/flutter/plugins/localauth/f$c;Lio/flutter/plugins/localauth/f$f;ZLio/flutter/plugins/localauth/AuthenticationHelper$a;)V

    return-void

    :cond_66
    :goto_66
    new-instance p1, Lio/flutter/plugins/localauth/f$e$a;

    invoke-direct {p1}, Lio/flutter/plugins/localauth/f$e$a;-><init>()V

    sget-object p2, Lio/flutter/plugins/localauth/f$d;->i:Lio/flutter/plugins/localauth/f$d;

    goto :goto_f
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugins/localauth/e;->d:Landroidx/lifecycle/f;

    iput-object v0, p0, Lio/flutter/plugins/localauth/e;->a:Landroid/app/Activity;

    return-void
.end method

.method public i(Lj0/a$b;)V
    .registers 3

    invoke-virtual {p1}, Lj0/a$b;->b()Ls0/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/plugins/localauth/l;->g(Ls0/c;Lio/flutter/plugins/localauth/f$h;)V

    return-void
.end method

.method public j()Ljava/lang/Boolean;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->b:Lio/flutter/plugins/localauth/AuthenticationHelper;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->b:Lio/flutter/plugins/localauth/AuthenticationHelper;

    invoke-virtual {v0}, Lio/flutter/plugins/localauth/AuthenticationHelper;->t()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugins/localauth/e;->b:Lio/flutter/plugins/localauth/AuthenticationHelper;

    :cond_14
    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public k(Lk0/c;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->h:Ls0/l;

    invoke-interface {p1, v0}, Lk0/c;->b(Ls0/l;)V

    invoke-interface {p1}, Lk0/c;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/plugins/localauth/e;->u(Landroid/app/Activity;)V

    invoke-static {p1}, Ln0/a;->a(Lk0/c;)Landroidx/lifecycle/f;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/localauth/e;->d:Landroidx/lifecycle/f;

    return-void
.end method

.method public n()Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_b

    invoke-virtual {p0}, Lio/flutter/plugins/localauth/e;->q()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->e:Landroidx/biometric/i;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroidx/biometric/i;->a(I)I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public o(Lio/flutter/plugins/localauth/f$j;)Lio/flutter/plugins/localauth/AuthenticationHelper$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/localauth/f$j<",
            "Lio/flutter/plugins/localauth/f$e;",
            ">;)",
            "Lio/flutter/plugins/localauth/AuthenticationHelper$a;"
        }
    .end annotation

    new-instance v0, Lio/flutter/plugins/localauth/d;

    invoke-direct {v0, p0, p1}, Lio/flutter/plugins/localauth/d;-><init>(Lio/flutter/plugins/localauth/e;Lio/flutter/plugins/localauth/f$j;)V

    return-object v0
.end method

.method public q()Z
    .registers 5

    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->f:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_13

    invoke-static {v0}, Landroidx/biometric/s;->a(Landroid/app/KeyguardManager;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method s(Lio/flutter/plugins/localauth/f$j;Lio/flutter/plugins/localauth/f$d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/localauth/f$j<",
            "Lio/flutter/plugins/localauth/f$e;",
            ">;",
            "Lio/flutter/plugins/localauth/f$d;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lio/flutter/plugins/localauth/f$e$a;

    invoke-direct {v0}, Lio/flutter/plugins/localauth/f$e$a;-><init>()V

    invoke-virtual {v0, p2}, Lio/flutter/plugins/localauth/f$e$a;->b(Lio/flutter/plugins/localauth/f$d;)Lio/flutter/plugins/localauth/f$e$a;

    move-result-object p2

    invoke-virtual {p2}, Lio/flutter/plugins/localauth/f$e$a;->a()Lio/flutter/plugins/localauth/f$e;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugins/localauth/f$j;->a(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public t(Lio/flutter/plugins/localauth/f$c;Lio/flutter/plugins/localauth/f$f;ZLio/flutter/plugins/localauth/AuthenticationHelper$a;)V
    .registers 13

    new-instance v7, Lio/flutter/plugins/localauth/AuthenticationHelper;

    iget-object v1, p0, Lio/flutter/plugins/localauth/e;->d:Landroidx/lifecycle/f;

    iget-object v0, p0, Lio/flutter/plugins/localauth/e;->a:Landroid/app/Activity;

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/j;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lio/flutter/plugins/localauth/AuthenticationHelper;-><init>(Landroidx/lifecycle/f;Landroidx/fragment/app/j;Lio/flutter/plugins/localauth/f$c;Lio/flutter/plugins/localauth/f$f;Lio/flutter/plugins/localauth/AuthenticationHelper$a;Z)V

    iput-object v7, p0, Lio/flutter/plugins/localauth/e;->b:Lio/flutter/plugins/localauth/AuthenticationHelper;

    invoke-virtual {v7}, Lio/flutter/plugins/localauth/AuthenticationHelper;->n()V

    return-void
.end method
