.class public Landroidx/fragment/app/e;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private g0:Landroid/os/Handler;

.field private h0:Ljava/lang/Runnable;

.field private i0:Landroid/content/DialogInterface$OnCancelListener;

.field private j0:Landroid/content/DialogInterface$OnDismissListener;

.field private k0:I

.field private l0:I

.field private m0:Z

.field private n0:Z

.field private o0:I

.field private p0:Z

.field private q0:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Landroidx/lifecycle/i;",
            ">;"
        }
    .end annotation
.end field

.field private r0:Landroid/app/Dialog;

.field private s0:Z

.field private t0:Z

.field private u0:Z

.field private v0:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroidx/fragment/app/e$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/e$a;-><init>(Landroidx/fragment/app/e;)V

    iput-object v0, p0, Landroidx/fragment/app/e;->h0:Ljava/lang/Runnable;

    new-instance v0, Landroidx/fragment/app/e$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/e$b;-><init>(Landroidx/fragment/app/e;)V

    iput-object v0, p0, Landroidx/fragment/app/e;->i0:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Landroidx/fragment/app/e$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/e$c;-><init>(Landroidx/fragment/app/e;)V

    iput-object v0, p0, Landroidx/fragment/app/e;->j0:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/e;->k0:I

    iput v0, p0, Landroidx/fragment/app/e;->l0:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/e;->m0:Z

    iput-boolean v1, p0, Landroidx/fragment/app/e;->n0:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/fragment/app/e;->o0:I

    new-instance v1, Landroidx/fragment/app/e$d;

    invoke-direct {v1, p0}, Landroidx/fragment/app/e$d;-><init>(Landroidx/fragment/app/e;)V

    iput-object v1, p0, Landroidx/fragment/app/e;->q0:Landroidx/lifecycle/o;

    iput-boolean v0, p0, Landroidx/fragment/app/e;->v0:Z

    return-void
.end method

.method static synthetic c2(Landroidx/fragment/app/e;)Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic d2(Landroidx/fragment/app/e;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 1

    iget-object p0, p0, Landroidx/fragment/app/e;->j0:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic e2(Landroidx/fragment/app/e;)Z
    .registers 1

    iget-boolean p0, p0, Landroidx/fragment/app/e;->n0:Z

    return p0
.end method

.method private g2(ZZZ)V
    .registers 7

    iget-boolean v0, p0, Landroidx/fragment/app/e;->t0:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/e;->t0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/e;->u0:Z

    iget-object v1, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    if-eqz v1, :cond_33

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_33

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Landroidx/fragment/app/e;->g0:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_2c

    iget-object p2, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/e;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_33

    :cond_2c
    iget-object p2, p0, Landroidx/fragment/app/e;->g0:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/e;->h0:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_33
    :goto_33
    iput-boolean v0, p0, Landroidx/fragment/app/e;->s0:Z

    iget p2, p0, Landroidx/fragment/app/e;->o0:I

    if-ltz p2, :cond_52

    if-eqz p3, :cond_45

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object p1

    iget p2, p0, Landroidx/fragment/app/e;->o0:I

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/x;->c1(II)Z

    goto :goto_4e

    :cond_45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object p2

    iget p3, p0, Landroidx/fragment/app/e;->o0:I

    invoke-virtual {p2, p3, v0, p1}, Landroidx/fragment/app/x;->a1(IIZ)V

    :goto_4e
    const/4 p1, -0x1

    iput p1, p0, Landroidx/fragment/app/e;->o0:I

    goto :goto_6f

    :cond_52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/x;->o()Landroidx/fragment/app/g0;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/fragment/app/g0;->m(Z)Landroidx/fragment/app/g0;

    invoke-virtual {p2, p0}, Landroidx/fragment/app/g0;->l(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/g0;

    if-eqz p3, :cond_66

    invoke-virtual {p2}, Landroidx/fragment/app/g0;->h()V

    goto :goto_6f

    :cond_66
    if-eqz p1, :cond_6c

    invoke-virtual {p2}, Landroidx/fragment/app/g0;->g()I

    goto :goto_6f

    :cond_6c
    invoke-virtual {p2}, Landroidx/fragment/app/g0;->f()I

    :goto_6f
    return-void
.end method

.method private l2(Landroid/os/Bundle;)V
    .registers 5

    iget-boolean v0, p0, Landroidx/fragment/app/e;->n0:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Landroidx/fragment/app/e;->v0:Z

    if-nez v0, :cond_4d

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, p0, Landroidx/fragment/app/e;->p0:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/e;->i2(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    iget-boolean v2, p0, Landroidx/fragment/app/e;->n0:Z

    if-eqz v2, :cond_43

    iget v2, p0, Landroidx/fragment/app/e;->k0:I

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/e;->m2(Landroid/app/Dialog;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_2b
    iget-object p1, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    iget-boolean v2, p0, Landroidx/fragment/app/e;->m0:Z

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    iget-object v2, p0, Landroidx/fragment/app/e;->i0:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    iget-object v2, p0, Landroidx/fragment/app/e;->j0:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v1, p0, Landroidx/fragment/app/e;->v0:Z

    goto :goto_46

    :cond_43
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;
    :try_end_46
    .catchall {:try_start_b .. :try_end_46} :catchall_49

    :goto_46
    iput-boolean v0, p0, Landroidx/fragment/app/e;->p0:Z

    goto :goto_4d

    :catchall_49
    move-exception p1

    iput-boolean v0, p0, Landroidx/fragment/app/e;->p0:Z

    throw p1

    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method B()Landroidx/fragment/app/l;
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/l;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/e$e;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/e$e;-><init>(Landroidx/fragment/app/e;Landroidx/fragment/app/l;)V

    return-object v1
.end method

.method public G0(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->G0(Landroid/os/Bundle;)V

    return-void
.end method

.method public J0(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->J0(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->v0()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/e;->q0:Landroidx/lifecycle/o;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/o;)V

    iget-boolean p1, p0, Landroidx/fragment/app/e;->u0:Z

    if-nez p1, :cond_13

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/e;->t0:Z

    :cond_13
    return-void
.end method

.method public M0(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->M0(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/e;->g0:Landroid/os/Handler;

    iget v0, p0, Landroidx/fragment/app/Fragment;->C:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Landroidx/fragment/app/e;->n0:Z

    if-eqz p1, :cond_42

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/e;->k0:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/e;->l0:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/e;->m0:Z

    iget-boolean v0, p0, Landroidx/fragment/app/e;->n0:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/e;->n0:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/e;->o0:I

    :cond_42
    return-void
.end method

.method public T0()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->T0()V

    iget-object v0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/e;->s0:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v0, p0, Landroidx/fragment/app/e;->t0:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/e;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1c
    iput-object v1, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/e;->v0:Z

    :cond_21
    return-void
.end method

.method public U0()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->U0()V

    iget-boolean v0, p0, Landroidx/fragment/app/e;->u0:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroidx/fragment/app/e;->t0:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/e;->t0:Z

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->v0()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/e;->q0:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/o;)V

    return-void
.end method

.method public V0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 6

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->V0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/fragment/app/e;->n0:Z

    const/4 v2, 0x2

    const-string v3, "FragmentManager"

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Landroidx/fragment/app/e;->p0:Z

    if-eqz v1, :cond_10

    goto :goto_3f

    :cond_10
    invoke-direct {p0, p1}, Landroidx/fragment/app/e;->l2(Landroid/os/Bundle;)V

    invoke-static {v2}, Landroidx/fragment/app/x;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_32

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get layout inflater for DialogFragment "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from dialog context"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    iget-object p1, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_3e
    return-object v0

    :cond_3f
    :goto_3f
    invoke-static {v2}, Landroidx/fragment/app/x;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_76

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting layout inflater for DialogFragment "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Landroidx/fragment/app/e;->n0:Z

    if-nez v1, :cond_62

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowsDialog = false: "

    goto :goto_69

    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCreatingDialog = true: "

    :goto_69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return-object v0
.end method

.method public f2()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroidx/fragment/app/e;->g2(ZZZ)V

    return-void
.end method

.method public h2()I
    .registers 2

    iget v0, p0, Landroidx/fragment/app/e;->l0:I

    return v0
.end method

.method public i1(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i1(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android:dialogShowing"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_16
    iget v0, p0, Landroidx/fragment/app/e;->k0:I

    if-eqz v0, :cond_1f

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1f
    iget v0, p0, Landroidx/fragment/app/e;->l0:I

    if-eqz v0, :cond_28

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_28
    iget-boolean v0, p0, Landroidx/fragment/app/e;->m0:Z

    if-nez v0, :cond_31

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_31
    iget-boolean v0, p0, Landroidx/fragment/app/e;->n0:Z

    if-nez v0, :cond_3a

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3a
    iget v0, p0, Landroidx/fragment/app/e;->o0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_44

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_44
    return-void
.end method

.method public i2(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    const/4 p1, 0x3

    invoke-static {p1}, Landroidx/fragment/app/x;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateDialog called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    new-instance p1, Landroidx/activity/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/e;->h2()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/activity/f;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public j1()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->j1()V

    iget-object v0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/e;->s0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/f0;->a(Landroid/view/View;Landroidx/lifecycle/i;)V

    invoke-static {v0, p0}, Landroidx/lifecycle/g0;->a(Landroid/view/View;Landroidx/lifecycle/e0;)V

    invoke-static {v0, p0}, Ly/f;->a(Landroid/view/View;Ly/e;)V

    :cond_20
    return-void
.end method

.method j2(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public k1()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->k1()V

    iget-object v0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_a
    return-void
.end method

.method k2()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/e;->v0:Z

    return v0
.end method

.method public m1(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->m1(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object v0, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_16
    return-void
.end method

.method public m2(Landroid/app/Dialog;I)V
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_15

    const/4 v1, 0x2

    if-eq p2, v1, :cond_15

    const/4 v1, 0x3

    if-eq p2, v1, :cond_a

    goto :goto_18

    :cond_a
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_15

    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_15
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_18
    return-void
.end method

.method public n2(Landroidx/fragment/app/x;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/e;->t0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/e;->u0:Z

    invoke-virtual {p1}, Landroidx/fragment/app/x;->o()Landroidx/fragment/app/g0;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/g0;->m(Z)Landroidx/fragment/app/g0;

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/g0;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/g0;

    invoke-virtual {p1}, Landroidx/fragment/app/g0;->f()I

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-boolean p1, p0, Landroidx/fragment/app/e;->s0:Z

    if-nez p1, :cond_26

    const/4 p1, 0x3

    invoke-static {p1}, Landroidx/fragment/app/x;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_21

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDismiss called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, p1}, Landroidx/fragment/app/e;->g2(ZZZ)V

    :cond_26
    return-void
.end method

.method t1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->t1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-nez p1, :cond_1a

    iget-object p1, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    if-eqz p1, :cond_1a

    if-eqz p3, :cond_1a

    const-string p1, "android:savedDialogState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p2, p0, Landroidx/fragment/app/e;->r0:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_1a
    return-void
.end method
