.class Landroidx/fragment/app/d$m;
.super Landroidx/fragment/app/d$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Z

.field private final e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/fragment/app/m0$e;Landroidx/core/os/e;ZZ)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/d$l;-><init>(Landroidx/fragment/app/m0$e;Landroidx/core/os/e;)V

    invoke-virtual {p1}, Landroidx/fragment/app/m0$e;->e()Landroidx/fragment/app/m0$e$c;

    move-result-object p2

    sget-object v0, Landroidx/fragment/app/m0$e$c;->f:Landroidx/fragment/app/m0$e$c;

    if-ne p2, v0, :cond_2c

    invoke-virtual {p1}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p3, :cond_16

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->l0()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1a

    :cond_16
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->V()Ljava/lang/Object;

    move-result-object p2

    :goto_1a
    iput-object p2, p0, Landroidx/fragment/app/d$m;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p3, :cond_27

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->N()Z

    move-result p2

    goto :goto_3e

    :cond_27
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->M()Z

    move-result p2

    goto :goto_3e

    :cond_2c
    invoke-virtual {p1}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p3, :cond_37

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->n0()Ljava/lang/Object;

    move-result-object p2

    goto :goto_3b

    :cond_37
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->Y()Ljava/lang/Object;

    move-result-object p2

    :goto_3b
    iput-object p2, p0, Landroidx/fragment/app/d$m;->c:Ljava/lang/Object;

    const/4 p2, 0x1

    :goto_3e
    iput-boolean p2, p0, Landroidx/fragment/app/d$m;->d:Z

    if-eqz p4, :cond_52

    invoke-virtual {p1}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p3, :cond_4d

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->p0()Ljava/lang/Object;

    move-result-object p1

    goto :goto_53

    :cond_4d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->o0()Ljava/lang/Object;

    move-result-object p1

    goto :goto_53

    :cond_52
    const/4 p1, 0x0

    :goto_53
    iput-object p1, p0, Landroidx/fragment/app/d$m;->e:Ljava/lang/Object;

    return-void
.end method

.method private f(Ljava/lang/Object;)Landroidx/fragment/app/j0;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    sget-object v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/j0;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j0;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    sget-object v0, Landroidx/fragment/app/h0;->b:Landroidx/fragment/app/j0;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j0;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/d$l;->b()Landroidx/fragment/app/m0$e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method e()Landroidx/fragment/app/j0;
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/d$m;->c:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/fragment/app/d$m;->f(Ljava/lang/Object;)Landroidx/fragment/app/j0;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/d$m;->e:Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/fragment/app/d$m;->f(Ljava/lang/Object;)Landroidx/fragment/app/j0;

    move-result-object v1

    if-eqz v0, :cond_46

    if-eqz v1, :cond_46

    if-ne v0, v1, :cond_13

    goto :goto_46

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/d$l;->b()Landroidx/fragment/app/m0$e;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/m0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/d$m;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/d$m;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    :goto_46
    if-eqz v0, :cond_49

    goto :goto_4a

    :cond_49
    move-object v0, v1

    :goto_4a
    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/d$m;->e:Ljava/lang/Object;

    return-object v0
.end method

.method h()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/d$m;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/d$m;->e:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method j()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/fragment/app/d$m;->d:Z

    return v0
.end method
