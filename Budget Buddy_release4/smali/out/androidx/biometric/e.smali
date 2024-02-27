.class public Landroidx/biometric/e;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/e$l;,
        Landroidx/biometric/e$m;,
        Landroidx/biometric/e$n;,
        Landroidx/biometric/e$o;,
        Landroidx/biometric/e$s;,
        Landroidx/biometric/e$r;,
        Landroidx/biometric/e$q;,
        Landroidx/biometric/e$p;
    }
.end annotation


# instance fields
.field g0:Landroid/os/Handler;

.field h0:Landroidx/biometric/k;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/biometric/e;->g0:Landroid/os/Handler;

    return-void
.end method

.method private A2(ILjava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->B()Z

    move-result v0

    const-string v1, "BiometricFragment"

    if-eqz v0, :cond_10

    const-string p1, "Error not sent to client. User is confirming their device credential."

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->z()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string p1, "Error not sent to client. Client is not awaiting a result."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->N(Z)V

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->n()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/biometric/e$a;

    invoke-direct {v1, p0, p1, p2}, Landroidx/biometric/e$a;-><init>(Landroidx/biometric/e;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private B2()V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->z()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "BiometricFragment"

    const-string v1, "Failure not sent to client. Client is not awaiting a result."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->n()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/biometric/e$b;

    invoke-direct {v1, p0}, Landroidx/biometric/e$b;-><init>(Landroidx/biometric/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private C2(Landroidx/biometric/BiometricPrompt$b;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/biometric/e;->D2(Landroidx/biometric/BiometricPrompt$b;)V

    invoke-virtual {p0}, Landroidx/biometric/e;->i2()V

    return-void
.end method

.method private D2(Landroidx/biometric/BiometricPrompt$b;)V
    .registers 4

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->z()Z

    move-result v0

    if-nez v0, :cond_10

    const-string p1, "BiometricFragment"

    const-string v0, "Success not sent to client. Client is not awaiting a result."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->N(Z)V

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->n()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/biometric/e$k;

    invoke-direct {v1, p0, p1}, Landroidx/biometric/e$k;-><init>(Landroidx/biometric/e;Landroidx/biometric/BiometricPrompt$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private E2()V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/e$m;->d(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v1}, Landroidx/biometric/k;->x()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v2}, Landroidx/biometric/k;->w()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v3}, Landroidx/biometric/k;->p()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v1, :cond_23

    invoke-static {v0, v1}, Landroidx/biometric/e$m;->h(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    :cond_23
    if-eqz v2, :cond_28

    invoke-static {v0, v2}, Landroidx/biometric/e$m;->g(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    :cond_28
    if-eqz v3, :cond_2d

    invoke-static {v0, v3}, Landroidx/biometric/e$m;->e(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    :cond_2d
    iget-object v1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v1}, Landroidx/biometric/k;->v()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v2}, Landroidx/biometric/k;->n()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v3}, Landroidx/biometric/k;->u()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroidx/biometric/e$m;->f(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_57

    iget-object v3, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v3}, Landroidx/biometric/k;->A()Z

    move-result v3

    invoke-static {v0, v3}, Landroidx/biometric/e$n;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    :cond_57
    iget-object v3, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v3}, Landroidx/biometric/k;->f()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v1, v4, :cond_65

    invoke-static {v0, v3}, Landroidx/biometric/e$o;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)V

    goto :goto_6e

    :cond_65
    if-lt v1, v2, :cond_6e

    invoke-static {v3}, Landroidx/biometric/c;->c(I)Z

    move-result v1

    invoke-static {v0, v1}, Landroidx/biometric/e$n;->b(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    :cond_6e
    :goto_6e
    invoke-static {v0}, Landroidx/biometric/e$m;->c(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/biometric/e;->d2(Landroid/hardware/biometrics/BiometricPrompt;Landroid/content/Context;)V

    return-void
.end method

.method private F2()V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/hardware/fingerprint/a;->b(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/a;

    move-result-object v1

    invoke-static {v1}, Landroidx/biometric/e;->g2(Landroidx/core/hardware/fingerprint/a;)I

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {v0, v2}, Landroidx/biometric/p;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroidx/biometric/e;->z2(ILjava/lang/CharSequence;)V

    return-void

    :cond_1a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->z0()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/biometric/k;->V(Z)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/biometric/o;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, p0, Landroidx/biometric/e;->g0:Landroid/os/Handler;

    new-instance v3, Landroidx/biometric/e$i;

    invoke-direct {v3, p0}, Landroidx/biometric/e$i;-><init>(Landroidx/biometric/e;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroidx/biometric/q;->r2()Landroidx/biometric/q;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object v3

    const-string v4, "androidx.biometric.FingerprintDialogFragment"

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/e;->n2(Landroidx/fragment/app/x;Ljava/lang/String;)V

    :cond_47
    iget-object v2, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/biometric/k;->O(I)V

    invoke-virtual {p0, v1, v0}, Landroidx/biometric/e;->e2(Landroidx/core/hardware/fingerprint/a;Landroid/content/Context;)V

    :cond_50
    return-void
.end method

.method private G2(Ljava/lang/CharSequence;)V
    .registers 4

    if-eqz p1, :cond_3

    goto :goto_9

    :cond_3
    sget p1, Landroidx/biometric/a0;->b:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->s0(I)Ljava/lang/String;

    move-result-object p1

    :goto_9
    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->Y(I)V

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0, p1}, Landroidx/biometric/k;->W(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static g2(Landroidx/core/hardware/fingerprint/a;)I
    .registers 2

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/a;->e()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, 0xc

    return p0

    :cond_9
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/a;->d()Z

    move-result p0

    if-nez p0, :cond_12

    const/16 p0, 0xb

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private h2()V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroidx/lifecycle/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/a0;-><init>(Landroidx/lifecycle/e0;)V

    const-class v1, Landroidx/biometric/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object v0

    check-cast v0, Landroidx/biometric/k;

    iput-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->j()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/e$c;

    invoke-direct {v1, p0}, Landroidx/biometric/e$c;-><init>(Landroidx/biometric/e;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->h()Landroidx/lifecycle/n;

    move-result-object v0

    new-instance v1, Landroidx/biometric/e$d;

    invoke-direct {v1, p0}, Landroidx/biometric/e$d;-><init>(Landroidx/biometric/e;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->i()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/e$e;

    invoke-direct {v1, p0}, Landroidx/biometric/e$e;-><init>(Landroidx/biometric/e;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->y()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/e$f;

    invoke-direct {v1, p0}, Landroidx/biometric/e$f;-><init>(Landroidx/biometric/e;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->G()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/e$g;

    invoke-direct {v1, p0}, Landroidx/biometric/e$g;-><init>(Landroidx/biometric/e;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->D()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/e$h;

    invoke-direct {v1, p0}, Landroidx/biometric/e$h;-><init>(Landroidx/biometric/e;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/i;Landroidx/lifecycle/o;)V

    return-void
.end method

.method private j2()V
    .registers 4

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->d0(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->z0()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object v0

    const-string v1, "androidx.biometric.FingerprintDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/biometric/q;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->z0()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Landroidx/fragment/app/e;->f2()V

    goto :goto_2f

    :cond_24
    invoke-virtual {v0}, Landroidx/fragment/app/x;->o()Landroidx/fragment/app/g0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g0;->l(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g0;->g()I

    :cond_2f
    :goto_2f
    return-void
.end method

.method private k2()I
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/biometric/o;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_12

    :cond_10
    const/16 v0, 0x7d0

    :goto_12
    return v0
.end method

.method private l2(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    new-instance p1, Landroidx/biometric/BiometricPrompt$b;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Landroidx/biometric/BiometricPrompt$b;-><init>(Landroidx/biometric/BiometricPrompt$c;I)V

    invoke-direct {p0, p1}, Landroidx/biometric/e;->C2(Landroidx/biometric/BiometricPrompt$b;)V

    goto :goto_19

    :cond_e
    const/16 p1, 0xa

    sget v0, Landroidx/biometric/a0;->l:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->s0(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/biometric/e;->z2(ILjava/lang/CharSequence;)V

    :goto_19
    return-void
.end method

.method private m2()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private n2()Z
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v1}, Landroidx/biometric/k;->o()Landroidx/biometric/BiometricPrompt$c;

    move-result-object v1

    if-eqz v1, :cond_1a

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/biometric/o;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private o2()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private q2()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_15

    invoke-direct {p0}, Landroidx/biometric/e;->n2()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Landroidx/biometric/e;->o2()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private r2()V
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "BiometricFragment"

    const-string v1, "Failed to check device credential. Client FragmentActivity not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-static {v0}, Landroidx/biometric/r;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object v0

    if-nez v0, :cond_20

    const/16 v0, 0xc

    sget v1, Landroidx/biometric/a0;->k:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->s0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/biometric/e;->z2(ILjava/lang/CharSequence;)V

    return-void

    :cond_20
    iget-object v1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v1}, Landroidx/biometric/k;->x()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v2}, Landroidx/biometric/k;->w()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v3}, Landroidx/biometric/k;->p()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v2, :cond_35

    goto :goto_36

    :cond_35
    move-object v2, v3

    :goto_36
    invoke-static {v0, v1, v2}, Landroidx/biometric/e$l;->a(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_48

    const/16 v0, 0xe

    sget v1, Landroidx/biometric/a0;->j:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->s0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/biometric/e;->z2(ILjava/lang/CharSequence;)V

    return-void

    :cond_48
    iget-object v1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/biometric/k;->R(Z)V

    invoke-direct {p0}, Landroidx/biometric/e;->q2()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-direct {p0}, Landroidx/biometric/e;->j2()V

    :cond_57
    const/high16 v1, 0x8080000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->Z1(Landroid/content/Intent;I)V

    return-void
.end method

.method static s2()Landroidx/biometric/e;
    .registers 1

    new-instance v0, Landroidx/biometric/e;

    invoke-direct {v0}, Landroidx/biometric/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public H0(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->H0(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_f

    iget-object p1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/biometric/k;->R(Z)V

    invoke-direct {p0, p2}, Landroidx/biometric/e;->l2(I)V

    :cond_f
    return-void
.end method

.method H2()V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->H()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "BiometricFragment"

    const-string v1, "Not showing biometric prompt. Context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->d0(Z)V

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->N(Z)V

    invoke-direct {p0}, Landroidx/biometric/e;->q2()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Landroidx/biometric/e;->F2()V

    goto :goto_2e

    :cond_2b
    invoke-direct {p0}, Landroidx/biometric/e;->E2()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public M0(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->M0(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroidx/biometric/e;->h2()V

    return-void
.end method

.method c2(Landroidx/biometric/BiometricPrompt$d;Landroidx/biometric/BiometricPrompt$c;)V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p1, "BiometricFragment"

    const-string p2, "Not launching prompt. Client activity was null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v1, p1}, Landroidx/biometric/k;->c0(Landroidx/biometric/BiometricPrompt$d;)V

    invoke-static {p1, p2}, Landroidx/biometric/c;->b(Landroidx/biometric/BiometricPrompt$d;Landroidx/biometric/BiometricPrompt$c;)I

    move-result p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2e

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2e

    const/16 v1, 0xf

    if-ne p1, v1, :cond_2e

    if-nez p2, :cond_2e

    iget-object p1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-static {}, Landroidx/biometric/m;->a()Landroidx/biometric/BiometricPrompt$c;

    move-result-object p2

    goto :goto_30

    :cond_2e
    iget-object p1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    :goto_30
    invoke-virtual {p1, p2}, Landroidx/biometric/k;->S(Landroidx/biometric/BiometricPrompt$c;)V

    invoke-virtual {p0}, Landroidx/biometric/e;->p2()Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    sget p2, Landroidx/biometric/a0;->a:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->s0(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_45

    :cond_42
    iget-object p1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 p2, 0x0

    :goto_45
    invoke-virtual {p1, p2}, Landroidx/biometric/k;->b0(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/biometric/e;->p2()Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-static {v0}, Landroidx/biometric/i;->g(Landroid/content/Context;)Landroidx/biometric/i;

    move-result-object p1

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroidx/biometric/i;->a(I)I

    move-result p1

    if-eqz p1, :cond_64

    iget-object p1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/biometric/k;->N(Z)V

    invoke-direct {p0}, Landroidx/biometric/e;->r2()V

    return-void

    :cond_64
    iget-object p1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {p1}, Landroidx/biometric/k;->C()Z

    move-result p1

    if-eqz p1, :cond_79

    iget-object p1, p0, Landroidx/biometric/e;->g0:Landroid/os/Handler;

    new-instance p2, Landroidx/biometric/e$q;

    invoke-direct {p2, p0}, Landroidx/biometric/e$q;-><init>(Landroidx/biometric/e;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7c

    :cond_79
    invoke-virtual {p0}, Landroidx/biometric/e;->H2()V

    :goto_7c
    return-void
.end method

.method d2(Landroid/hardware/biometrics/BiometricPrompt;Landroid/content/Context;)V
    .registers 7

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->o()Landroidx/biometric/BiometricPrompt$c;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/m;->d(Landroidx/biometric/BiometricPrompt$c;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v1}, Landroidx/biometric/k;->l()Landroidx/biometric/l;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/biometric/l;->b()Landroid/os/CancellationSignal;

    move-result-object v1

    new-instance v2, Landroidx/biometric/e$p;

    invoke-direct {v2}, Landroidx/biometric/e$p;-><init>()V

    iget-object v3, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v3}, Landroidx/biometric/k;->g()Landroidx/biometric/a;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/biometric/a;->a()Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v3

    if-nez v0, :cond_29

    :try_start_25
    invoke-static {p1, v1, v2, v3}, Landroidx/biometric/e$m;->b(Landroid/hardware/biometrics/BiometricPrompt;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_44

    :cond_29
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/biometric/e$m;->a(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_44

    :catch_2d
    move-exception p1

    const-string v0, "BiometricFragment"

    const-string v1, "Got NPE while authenticating with biometric prompt."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_3e

    sget p1, Landroidx/biometric/a0;->b:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    :cond_3e
    const-string p1, ""

    :goto_40
    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroidx/biometric/e;->z2(ILjava/lang/CharSequence;)V

    :goto_44
    return-void
.end method

.method e2(Landroidx/core/hardware/fingerprint/a;Landroid/content/Context;)V
    .registers 10

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->o()Landroidx/biometric/BiometricPrompt$c;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/m;->e(Landroidx/biometric/BiometricPrompt$c;)Landroidx/core/hardware/fingerprint/a$e;

    move-result-object v2

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->l()Landroidx/biometric/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/l;->c()Landroidx/core/os/e;

    move-result-object v4

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->g()Landroidx/biometric/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/a;->b()Landroidx/core/hardware/fingerprint/a$c;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    :try_start_21
    invoke-virtual/range {v1 .. v6}, Landroidx/core/hardware/fingerprint/a;->a(Landroidx/core/hardware/fingerprint/a$e;ILandroidx/core/os/e;Landroidx/core/hardware/fingerprint/a$c;Landroid/os/Handler;)V
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_35

    :catch_25
    move-exception p1

    const-string v0, "BiometricFragment"

    const-string v1, "Got NPE while authenticating with fingerprint."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    invoke-static {p2, p1}, Landroidx/biometric/p;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/biometric/e;->z2(ILjava/lang/CharSequence;)V

    :goto_35
    return-void
.end method

.method f2(I)V
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->F()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0}, Landroidx/biometric/e;->q2()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0, p1}, Landroidx/biometric/k;->O(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Landroidx/biometric/p;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/biometric/e;->A2(ILjava/lang/CharSequence;)V

    :cond_27
    iget-object p1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {p1}, Landroidx/biometric/k;->l()Landroidx/biometric/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/biometric/l;->a()V

    return-void
.end method

.method i2()V
    .registers 5

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->d0(Z)V

    invoke-direct {p0}, Landroidx/biometric/e;->j2()V

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->B()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->z0()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/x;->o()Landroidx/fragment/app/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/g0;->l(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g0;->g()I

    :cond_26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_48

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/biometric/o;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->T(Z)V

    iget-object v0, p0, Landroidx/biometric/e;->g0:Landroid/os/Handler;

    new-instance v1, Landroidx/biometric/e$r;

    iget-object v2, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-direct {v1, v2}, Landroidx/biometric/e$r;-><init>(Landroidx/biometric/k;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_48
    return-void
.end method

.method public j1()V
    .registers 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->j1()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->f()I

    move-result v0

    invoke-static {v0}, Landroidx/biometric/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->Z(Z)V

    iget-object v0, p0, Landroidx/biometric/e;->g0:Landroid/os/Handler;

    new-instance v1, Landroidx/biometric/e$s;

    iget-object v2, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-direct {v1, v2}, Landroidx/biometric/e$s;-><init>(Landroidx/biometric/k;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_29
    return-void
.end method

.method public k1()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->k1()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->B()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Landroidx/biometric/e;->m2()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/biometric/e;->f2(I)V

    :cond_1b
    return-void
.end method

.method p2()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_14

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->f()I

    move-result v0

    invoke-static {v0}, Landroidx/biometric/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method t2(ILjava/lang/CharSequence;)V
    .registers 6

    invoke-static {p1}, Landroidx/biometric/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    const/16 p1, 0x8

    :goto_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_31

    invoke-static {p1}, Landroidx/biometric/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz v0, :cond_31

    invoke-static {v0}, Landroidx/biometric/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->f()I

    move-result v0

    invoke-static {v0}, Landroidx/biometric/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-direct {p0}, Landroidx/biometric/e;->r2()V

    return-void

    :cond_31
    invoke-direct {p0}, Landroidx/biometric/e;->q2()Z

    move-result v0

    if-eqz v0, :cond_7c

    if-eqz p2, :cond_3a

    goto :goto_42

    :cond_3a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/biometric/p;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    :goto_42
    const/4 v0, 0x5

    if-ne p1, v0, :cond_57

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->k()I

    move-result v0

    if-eqz v0, :cond_50

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    :cond_50
    invoke-direct {p0, p1, p2}, Landroidx/biometric/e;->A2(ILjava/lang/CharSequence;)V

    :cond_53
    invoke-virtual {p0}, Landroidx/biometric/e;->i2()V

    goto :goto_9c

    :cond_57
    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->E()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p0, p1, p2}, Landroidx/biometric/e;->z2(ILjava/lang/CharSequence;)V

    goto :goto_75

    :cond_63
    invoke-direct {p0, p2}, Landroidx/biometric/e;->G2(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/biometric/e;->g0:Landroid/os/Handler;

    new-instance v1, Landroidx/biometric/e$j;

    invoke-direct {v1, p0, p1, p2}, Landroidx/biometric/e$j;-><init>(Landroidx/biometric/e;ILjava/lang/CharSequence;)V

    invoke-direct {p0}, Landroidx/biometric/e;->k2()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_75
    iget-object p1, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/biometric/k;->V(Z)V

    goto :goto_9c

    :cond_7c
    if-eqz p2, :cond_7f

    goto :goto_99

    :cond_7f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Landroidx/biometric/a0;->b:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->s0(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_99
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/e;->z2(ILjava/lang/CharSequence;)V

    :goto_9c
    return-void
.end method

.method u2()V
    .registers 2

    invoke-direct {p0}, Landroidx/biometric/e;->q2()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Landroidx/biometric/a0;->i:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->s0(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/biometric/e;->G2(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-direct {p0}, Landroidx/biometric/e;->B2()V

    return-void
.end method

.method v2(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0}, Landroidx/biometric/e;->q2()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Landroidx/biometric/e;->G2(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method w2(Landroidx/biometric/BiometricPrompt$b;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/biometric/e;->C2(Landroidx/biometric/BiometricPrompt$b;)V

    return-void
.end method

.method x2()V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->v()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    sget v0, Landroidx/biometric/a0;->b:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->s0(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Landroidx/biometric/e;->z2(ILjava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/biometric/e;->f2(I)V

    return-void
.end method

.method y2()V
    .registers 1

    invoke-direct {p0}, Landroidx/biometric/e;->r2()V

    return-void
.end method

.method z2(ILjava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/biometric/e;->A2(ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/biometric/e;->i2()V

    return-void
.end method
