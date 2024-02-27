.class public Landroidx/biometric/k;
.super Landroidx/lifecycle/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/k$d;,
        Landroidx/biometric/k$b;,
        Landroidx/biometric/k$c;
    }
.end annotation


# instance fields
.field private A:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/Executor;

.field private e:Landroidx/biometric/BiometricPrompt$a;

.field private f:Landroidx/biometric/BiometricPrompt$d;

.field private g:Landroidx/biometric/BiometricPrompt$c;

.field private h:Landroidx/biometric/a;

.field private i:Landroidx/biometric/l;

.field private j:Landroid/content/DialogInterface$OnClickListener;

.field private k:Ljava/lang/CharSequence;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Landroidx/biometric/BiometricPrompt$b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Landroidx/biometric/d;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/lifecycle/z;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/biometric/k;->l:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/biometric/k;->w:Z

    iput v0, p0, Landroidx/biometric/k;->y:I

    return-void
.end method

.method private static e0(Landroidx/lifecycle/n;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/n<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->k(Ljava/lang/Object;)V

    goto :goto_15

    :cond_12
    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->i(Ljava/lang/Object;)V

    :goto_15
    return-void
.end method


# virtual methods
.method A()Z
    .registers 2

    iget-object v0, p0, Landroidx/biometric/k;->f:Landroidx/biometric/BiometricPrompt$d;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$d;->f()Z

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

.method B()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/biometric/k;->o:Z

    return v0
.end method

.method C()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/biometric/k;->p:Z

    return v0
.end method

.method D()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/k;->x:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->x:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->x:Landroidx/lifecycle/n;

    return-object v0
.end method

.method E()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/biometric/k;->w:Z

    return v0
.end method

.method F()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/biometric/k;->q:Z

    return v0
.end method

.method G()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/k;->v:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->v:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->v:Landroidx/lifecycle/n;

    return-object v0
.end method

.method H()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/biometric/k;->m:Z

    return v0
.end method

.method I()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/biometric/k;->e:Landroidx/biometric/BiometricPrompt$a;

    return-void
.end method

.method J(Landroidx/biometric/d;)V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k;->s:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->s:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->s:Landroidx/lifecycle/n;

    invoke-static {v0, p1}, Landroidx/biometric/k;->e0(Landroidx/lifecycle/n;Ljava/lang/Object;)V

    return-void
.end method

.method K(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k;->u:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->u:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->u:Landroidx/lifecycle/n;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/biometric/k;->e0(Landroidx/lifecycle/n;Ljava/lang/Object;)V

    return-void
.end method

.method L(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k;->t:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->t:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->t:Landroidx/lifecycle/n;

    invoke-static {v0, p1}, Landroidx/biometric/k;->e0(Landroidx/lifecycle/n;Ljava/lang/Object;)V

    return-void
.end method

.method M(Landroidx/biometric/BiometricPrompt$b;)V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k;->r:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->r:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->r:Landroidx/lifecycle/n;

    invoke-static {v0, p1}, Landroidx/biometric/k;->e0(Landroidx/lifecycle/n;Ljava/lang/Object;)V

    return-void
.end method

.method N(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/biometric/k;->n:Z

    return-void
.end method

.method O(I)V
    .registers 2

    iput p1, p0, Landroidx/biometric/k;->l:I

    return-void
.end method

.method P(Landroidx/biometric/BiometricPrompt$a;)V
    .registers 2

    iput-object p1, p0, Landroidx/biometric/k;->e:Landroidx/biometric/BiometricPrompt$a;

    return-void
.end method

.method Q(Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroidx/biometric/k;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method R(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/biometric/k;->o:Z

    return-void
.end method

.method S(Landroidx/biometric/BiometricPrompt$c;)V
    .registers 2

    iput-object p1, p0, Landroidx/biometric/k;->g:Landroidx/biometric/BiometricPrompt$c;

    return-void
.end method

.method T(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/biometric/k;->p:Z

    return-void
.end method

.method U(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k;->x:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->x:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->x:Landroidx/lifecycle/n;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/biometric/k;->e0(Landroidx/lifecycle/n;Ljava/lang/Object;)V

    return-void
.end method

.method V(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/biometric/k;->w:Z

    return-void
.end method

.method W(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k;->A:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->A:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->A:Landroidx/lifecycle/n;

    invoke-static {v0, p1}, Landroidx/biometric/k;->e0(Landroidx/lifecycle/n;Ljava/lang/Object;)V

    return-void
.end method

.method X(I)V
    .registers 2

    iput p1, p0, Landroidx/biometric/k;->y:I

    return-void
.end method

.method Y(I)V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k;->z:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->z:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->z:Landroidx/lifecycle/n;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/biometric/k;->e0(Landroidx/lifecycle/n;Ljava/lang/Object;)V

    return-void
.end method

.method Z(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/biometric/k;->q:Z

    return-void
.end method

.method a0(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k;->v:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->v:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->v:Landroidx/lifecycle/n;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/biometric/k;->e0(Landroidx/lifecycle/n;Ljava/lang/Object;)V

    return-void
.end method

.method b0(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroidx/biometric/k;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method c0(Landroidx/biometric/BiometricPrompt$d;)V
    .registers 2

    iput-object p1, p0, Landroidx/biometric/k;->f:Landroidx/biometric/BiometricPrompt$d;

    return-void
.end method

.method d0(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/biometric/k;->m:Z

    return-void
.end method

.method f()I
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k;->f:Landroidx/biometric/BiometricPrompt$d;

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroidx/biometric/k;->g:Landroidx/biometric/BiometricPrompt$c;

    invoke-static {v0, v1}, Landroidx/biometric/c;->b(Landroidx/biometric/BiometricPrompt$d;Landroidx/biometric/BiometricPrompt$c;)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method g()Landroidx/biometric/a;
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k;->h:Landroidx/biometric/a;

    if-nez v0, :cond_10

    new-instance v0, Landroidx/biometric/a;

    new-instance v1, Landroidx/biometric/k$b;

    invoke-direct {v1, p0}, Landroidx/biometric/k$b;-><init>(Landroidx/biometric/k;)V

    invoke-direct {v0, v1}, Landroidx/biometric/a;-><init>(Landroidx/biometric/a$d;)V

    iput-object v0, p0, Landroidx/biometric/k;->h:Landroidx/biometric/a;

    :cond_10
    iget-object v0, p0, Landroidx/biometric/k;->h:Landroidx/biometric/a;

    return-object v0
.end method

.method h()Landroidx/lifecycle/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/n<",
            "Landroidx/biometric/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/k;->s:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->s:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->s:Landroidx/lifecycle/n;

    return-object v0
.end method

.method i()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/k;->t:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->t:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->t:Landroidx/lifecycle/n;

    return-object v0
.end method

.method j()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/biometric/BiometricPrompt$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/k;->r:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->r:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->r:Landroidx/lifecycle/n;

    return-object v0
.end method

.method k()I
    .registers 2

    iget v0, p0, Landroidx/biometric/k;->l:I

    return v0
.end method

.method l()Landroidx/biometric/l;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/k;->i:Landroidx/biometric/l;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/biometric/l;

    invoke-direct {v0}, Landroidx/biometric/l;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->i:Landroidx/biometric/l;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->i:Landroidx/biometric/l;

    return-object v0
.end method

.method m()Landroidx/biometric/BiometricPrompt$a;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/k;->e:Landroidx/biometric/BiometricPrompt$a;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/biometric/k$a;

    invoke-direct {v0, p0}, Landroidx/biometric/k$a;-><init>(Landroidx/biometric/k;)V

    iput-object v0, p0, Landroidx/biometric/k;->e:Landroidx/biometric/BiometricPrompt$a;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->e:Landroidx/biometric/BiometricPrompt$a;

    return-object v0
.end method

.method n()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/k;->d:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_5

    goto :goto_a

    :cond_5
    new-instance v0, Landroidx/biometric/k$c;

    invoke-direct {v0}, Landroidx/biometric/k$c;-><init>()V

    :goto_a
    return-object v0
.end method

.method o()Landroidx/biometric/BiometricPrompt$c;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/k;->g:Landroidx/biometric/BiometricPrompt$c;

    return-object v0
.end method

.method p()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/k;->f:Landroidx/biometric/BiometricPrompt$d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$d;->b()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method q()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/k;->A:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->A:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->A:Landroidx/lifecycle/n;

    return-object v0
.end method

.method r()I
    .registers 2

    iget v0, p0, Landroidx/biometric/k;->y:I

    return v0
.end method

.method s()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/k;->z:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->z:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->z:Landroidx/lifecycle/n;

    return-object v0
.end method

.method t()I
    .registers 3

    invoke-virtual {p0}, Landroidx/biometric/k;->f()I

    move-result v0

    invoke-static {v0}, Landroidx/biometric/c;->d(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Landroidx/biometric/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x2

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method u()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/k;->j:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/biometric/k$d;

    invoke-direct {v0, p0}, Landroidx/biometric/k$d;-><init>(Landroidx/biometric/k;)V

    iput-object v0, p0, Landroidx/biometric/k;->j:Landroid/content/DialogInterface$OnClickListener;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method v()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/k;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Landroidx/biometric/k;->f:Landroidx/biometric/BiometricPrompt$d;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$d;->c()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method w()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/k;->f:Landroidx/biometric/BiometricPrompt$d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$d;->d()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method x()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/k;->f:Landroidx/biometric/BiometricPrompt$d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$d;->e()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method y()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/k;->u:Landroidx/lifecycle/n;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/biometric/k;->u:Landroidx/lifecycle/n;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/k;->u:Landroidx/lifecycle/n;

    return-object v0
.end method

.method z()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/biometric/k;->n:Z

    return v0
.end method
