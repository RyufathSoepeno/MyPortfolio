.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/i;
.implements Landroidx/lifecycle/e0;
.implements Landroidx/lifecycle/e;
.implements Ly/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$g;,
        Landroidx/fragment/app/Fragment$f;,
        Landroidx/fragment/app/Fragment$h;,
        Landroidx/fragment/app/Fragment$i;
    }
.end annotation


# static fields
.field static final f0:Ljava/lang/Object;


# instance fields
.field A:Landroidx/fragment/app/Fragment;

.field B:I

.field C:I

.field D:Ljava/lang/String;

.field E:Z

.field F:Z

.field G:Z

.field H:Z

.field I:Z

.field J:Z

.field private K:Z

.field L:Landroid/view/ViewGroup;

.field M:Landroid/view/View;

.field N:Z

.field O:Z

.field P:Landroidx/fragment/app/Fragment$f;

.field Q:Ljava/lang/Runnable;

.field R:Z

.field S:Landroid/view/LayoutInflater;

.field T:Z

.field public U:Ljava/lang/String;

.field V:Landroidx/lifecycle/f$c;

.field W:Landroidx/lifecycle/j;

.field X:Landroidx/fragment/app/k0;

.field Y:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Landroidx/lifecycle/i;",
            ">;"
        }
    .end annotation
.end field

.field Z:Landroidx/lifecycle/a0$b;

.field a0:Ly/d;

.field private b0:I

.field private final c0:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment$i;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field private final e0:Landroidx/fragment/app/Fragment$i;

.field f:Landroid/os/Bundle;

.field g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/os/Bundle;

.field i:Ljava/lang/Boolean;

.field j:Ljava/lang/String;

.field k:Landroid/os/Bundle;

.field l:Landroidx/fragment/app/Fragment;

.field m:Ljava/lang/String;

.field n:I

.field private o:Ljava/lang/Boolean;

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:Landroidx/fragment/app/x;

.field y:Landroidx/fragment/app/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/p<",
            "*>;"
        }
    .end annotation
.end field

.field z:Landroidx/fragment/app/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->f0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/Boolean;

    new-instance v0, Landroidx/fragment/app/y;

    invoke-direct {v0}, Landroidx/fragment/app/y;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->O:Z

    new-instance v0, Landroidx/fragment/app/Fragment$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$a;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->Q:Ljava/lang/Runnable;

    sget-object v0, Landroidx/lifecycle/f$c;->i:Landroidx/lifecycle/f$c;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->V:Landroidx/lifecycle/f$c;

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->Y:Landroidx/lifecycle/n;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->d0:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/Fragment$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->e0:Landroidx/fragment/app/Fragment$i;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->w0()V

    return-void
.end method

.method private F()Landroidx/fragment/app/Fragment$f;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/fragment/app/Fragment$f;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$f;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    return-object v0
.end method

.method private L1(Landroidx/fragment/app/Fragment$i;)V
    .registers 3

    iget v0, p0, Landroidx/fragment/app/Fragment;->e:I

    if-ltz v0, :cond_8

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment$i;->a()V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    return-void
.end method

.method private Q1()V
    .registers 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->R1(Landroid/os/Bundle;)V

    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    return-void
.end method

.method private d0()I
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->V:Landroidx/lifecycle/f$c;

    sget-object v1, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;

    if-eq v0, v1, :cond_1a

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_b

    goto :goto_1a

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/Fragment;

    invoke-direct {v1}, Landroidx/fragment/app/Fragment;->d0()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1a
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method private t0(Z)Landroidx/fragment/app/Fragment;
    .registers 3

    if-eqz p1, :cond_5

    invoke-static {p0}, Lu/d;->j(Landroidx/fragment/app/Fragment;)V

    :cond_5
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->l:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_a

    return-object p1

    :cond_a
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-eqz p1, :cond_17

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->m:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {p1, v0}, Landroidx/fragment/app/x;->g0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method private w0()V
    .registers 3

    new-instance v0, Landroidx/lifecycle/j;

    invoke-direct {v0, p0}, Landroidx/lifecycle/j;-><init>(Landroidx/lifecycle/i;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    invoke-static {p0}, Ly/d;->a(Ly/e;)Ly/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->a0:Ly/d;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/a0$b;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->d0:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->e0:Landroidx/fragment/app/Fragment$i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->e0:Landroidx/fragment/app/Fragment$i;

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->L1(Landroidx/fragment/app/Fragment$i;)V

    :cond_1f
    return-void
.end method

.method public static y0(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/fragment/app/o;->d(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->T1(Landroid/os/Bundle;)V
    :try_end_2b
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_2b} :catch_7b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2b} :catch_62
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_2b} :catch_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2b} :catch_2c

    :cond_2b
    return-object p0

    :catch_2c
    move-exception p0

    new-instance p2, Landroidx/fragment/app/Fragment$h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_47
    move-exception p0

    new-instance p2, Landroidx/fragment/app/Fragment$h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_62
    move-exception p0

    new-instance p2, Landroidx/fragment/app/Fragment$h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_7b
    move-exception p0

    new-instance p2, Landroidx/fragment/app/Fragment$h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method A(Z)V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$f;->t:Z

    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-eqz v1, :cond_2e

    invoke-static {v0, v1}, Landroidx/fragment/app/m0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/x;)Landroidx/fragment/app/m0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/m0;->p()V

    if-eqz p1, :cond_2b

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    invoke-virtual {p1}, Landroidx/fragment/app/p;->h()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Landroidx/fragment/app/Fragment$d;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/Fragment$d;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/m0;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e

    :cond_2b
    invoke-virtual {v0}, Landroidx/fragment/app/m0;->g()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final A0()Z
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->L0(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method A1(Landroid/view/MenuItem;)Z
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a1(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->K(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method B()Landroidx/fragment/app/l;
    .registers 2

    new-instance v0, Landroidx/fragment/app/Fragment$e;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$e;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method final B0()Z
    .registers 2

    iget v0, p0, Landroidx/fragment/app/Fragment;->w:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method B1(Landroid/view/Menu;)V
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b1(Landroid/view/Menu;)V

    :cond_f
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->L(Landroid/view/Menu;)V

    :cond_14
    return-void
.end method

.method public final C0()Z
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->M0(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method C1()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->N()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->b(Landroidx/lifecycle/f$b;)V

    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    const/4 v0, 0x6

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->c1()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_25

    return-void

    :cond_25
    new-instance v0, Landroidx/fragment/app/o0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method D0()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$f;->t:Z

    return v0
.end method

.method D1(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->d1(Z)V

    return-void
.end method

.method public E(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->B:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->w:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->O:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-eqz v0, :cond_c8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-eqz v0, :cond_d9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_ea

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_ea
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->k:Landroid/os/Bundle;

    if-eqz v0, :cond_fb

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->k:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_fb
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_10c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_10c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    if-eqz v0, :cond_11d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_11d
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_12e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewRegistryState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_12e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->t0(Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_14a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopDirection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h0()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->T()I

    move-result v0

    if-eqz v0, :cond_16e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getEnterAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->T()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_16e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()I

    move-result v0

    if-eqz v0, :cond_183

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getExitAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->i0()I

    move-result v0

    if-eqz v0, :cond_198

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getPopEnterAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->i0()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j0()I

    move-result v0

    if-eqz v0, :cond_1ad

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getPopExitAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j0()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1ad
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1be

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1be
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_1cf

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1cf
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1e4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1f1

    invoke-static {p0}, Landroidx/loader/app/a;->b(Landroidx/lifecycle/i;)Landroidx/loader/app/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/app/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1f1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/x;->X(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final E0()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/x;->P0()Z

    move-result v0

    return v0
.end method

.method E1(Landroid/view/Menu;)Z
    .registers 4

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->e1(Landroid/view/Menu;)V

    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->P(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_18
    return v1
.end method

.method F0()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->X0()V

    return-void
.end method

.method F1()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/x;->N0(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1e

    :cond_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->f1(Z)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->Q()V

    :cond_1e
    return-void
.end method

.method G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public G0(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method G1()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->X0()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->b0(Z)Z

    const/4 v0, 0x7

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h1()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->b(Landroidx/lifecycle/f$b;)V

    :cond_28
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->R()V

    return-void

    :cond_2e
    new-instance v0, Landroidx/fragment/app/o0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public H()Landroidx/lifecycle/a0$b;
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/a0$b;

    if-nez v0, :cond_5b

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_11
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_24

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1d

    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    goto :goto_24

    :cond_1d
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_11

    :cond_24
    :goto_24
    if-nez v0, :cond_50

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find Application instance from Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    new-instance v1, Landroidx/lifecycle/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/x;-><init>(Landroid/app/Application;Ly/e;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/a0$b;

    :cond_5b
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/a0$b;

    return-object v0

    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public H0(IILandroid/content/Intent;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void
.end method

.method H1(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->i1(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->a0:Ly/d;

    invoke-virtual {v0, p1}, Ly/d;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->k1()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_15
    return-void
.end method

.method public I()Lw/a;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_8
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1a

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/app/Application;

    goto :goto_1b

    :cond_13
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_8

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-nez v0, :cond_47

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find Application instance from Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    new-instance v1, Lw/d;

    invoke-direct {v1}, Lw/d;-><init>()V

    if-eqz v0, :cond_53

    sget-object v2, Landroidx/lifecycle/a0$a;->g:Lw/a$b;

    invoke-virtual {v1, v2, v0}, Lw/d;->c(Lw/a$b;Ljava/lang/Object;)V

    :cond_53
    sget-object v0, Landroidx/lifecycle/u;->a:Lw/a$b;

    invoke-virtual {v1, v0, p0}, Lw/d;->c(Lw/a$b;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/u;->b:Lw/a$b;

    invoke-virtual {v1, v0, p0}, Lw/d;->c(Lw/a$b;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6c

    sget-object v0, Landroidx/lifecycle/u;->c:Lw/a$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lw/d;->c(Lw/a$b;Ljava/lang/Object;)V

    :cond_6c
    return-object v1
.end method

.method public I0(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method I1()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->X0()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->b0(Z)Z

    const/4 v0, 0x5

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j1()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->b(Landroidx/lifecycle/f$b;)V

    :cond_28
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->S()V

    return-void

    :cond_2e
    new-instance v0, Landroidx/fragment/app/o0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public J0(Landroid/content/Context;)V
    .registers 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->K:Z

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroidx/fragment/app/p;->f()Landroid/app/Activity;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->I0(Landroid/app/Activity;)V

    :cond_15
    return-void
.end method

.method J1()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->U()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->b(Landroidx/lifecycle/f$b;)V

    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    const/4 v0, 0x4

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k1()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_25

    return-void

    :cond_25
    new-instance v0, Landroidx/fragment/app/o0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final K()Landroidx/fragment/app/j;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/p;->f()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j;

    :goto_c
    return-object v0
.end method

.method public K0(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method K1()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->l1(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->V()V

    return-void
.end method

.method public L0(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public M()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public M0(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->P1(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/x;->O0(I)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {p1}, Landroidx/fragment/app/x;->C()V

    :cond_13
    return-void
.end method

.method public final M1()Landroidx/fragment/app/j;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroidx/fragment/app/j;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public N()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public N0(IZI)Landroid/view/animation/Animation;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public final N1()Landroid/content/Context;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method O()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->a:Landroid/view/View;

    return-object v0
.end method

.method public O0(IZI)Landroid/animation/Animator;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public final O1()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final P()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->k:Landroid/os/Bundle;

    return-object v0
.end method

.method public P0(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method P1(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_14

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->i1(Landroid/os/Parcelable;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {p1}, Landroidx/fragment/app/x;->C()V

    :cond_14
    return-void
.end method

.method public final Q()Landroidx/fragment/app/x;
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget p3, p0, Landroidx/fragment/app/Fragment;->b0:I

    if-eqz p3, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method public R()Landroidx/lifecycle/d0;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->d0()I

    move-result v0

    sget-object v1, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/x;->D0(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/d0;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public R0()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method final R1(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->g:Landroid/util/SparseArray;

    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/k0;->e(Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;

    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->m1(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz p1, :cond_2f

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz p1, :cond_2e

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    sget-object v0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/k0;->b(Landroidx/lifecycle/f$b;)V

    :cond_2e
    return-void

    :cond_2f
    new-instance p1, Landroidx/fragment/app/o0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public S0()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method S1(IIII)V
    .registers 6

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    if-nez p2, :cond_d

    if-nez p3, :cond_d

    if-nez p4, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$f;->c:I

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    move-result-object p1

    iput p2, p1, Landroidx/fragment/app/Fragment$f;->d:I

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    move-result-object p1

    iput p3, p1, Landroidx/fragment/app/Fragment$f;->e:I

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    move-result-object p1

    iput p4, p1, Landroidx/fragment/app/Fragment$f;->f:I

    return-void
.end method

.method T()I
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$f;->c:I

    return v0
.end method

.method public T0()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method public T1(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E0()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_13
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->k:Landroid/os/Bundle;

    return-void
.end method

.method public U0()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method U1(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$f;->s:Landroid/view/View;

    return-void
.end method

.method public V()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public V0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method V1(I)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    iput p1, v0, Landroidx/fragment/app/Fragment$f;->g:I

    return-void
.end method

.method W()Landroidx/core/app/t;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method

.method public W0(Z)V
    .registers 2

    return-void
.end method

.method W1(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$f;->b:Z

    return-void
.end method

.method X()I
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$f;->d:I

    return v0
.end method

.method public X0(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method X1(F)V
    .registers 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$f;->r:F

    return-void
.end method

.method public Y()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public Y0(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->K:Z

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroidx/fragment/app/p;->f()Landroid/app/Activity;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->X0(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_15
    return-void
.end method

.method Y1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    iput-object p1, v0, Landroidx/fragment/app/Fragment$f;->h:Ljava/util/ArrayList;

    iput-object p2, v0, Landroidx/fragment/app/Fragment$f;->i:Ljava/util/ArrayList;

    return-void
.end method

.method Z()Landroidx/core/app/t;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method

.method public Z0(Z)V
    .registers 2

    return-void
.end method

.method public Z1(Landroid/content/Intent;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/Fragment;->a2(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a()Landroidx/lifecycle/f;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    return-object v0
.end method

.method a0()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->s:Landroid/view/View;

    return-object v0
.end method

.method public a1(Landroid/view/MenuItem;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public a2(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/x;->V0(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not attached to Activity"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b0()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/p;->k()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public b1(Landroid/view/Menu;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public b2()V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$f;->t:Z

    if-nez v0, :cond_d

    goto :goto_3c

    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-nez v0, :cond_19

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/Fragment$f;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$f;->t:Z

    goto :goto_3c

    :cond_19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    invoke-virtual {v1}, Landroidx/fragment/app/p;->h()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/Fragment$c;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$c;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_3c

    :cond_38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->A(Z)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public c0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroidx/fragment/app/p;->l()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->w0()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/view/f;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c1()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method public d1(Z)V
    .registers 2

    return-void
.end method

.method e0()I
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$f;->g:I

    return v0
.end method

.method public e1(Landroid/view/Menu;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f0()Landroidx/fragment/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public f1(Z)V
    .registers 2

    return-void
.end method

.method public final g0()Landroidx/fragment/app/x;
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g1(I[Ljava/lang/String;[I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/p;->g()Landroid/content/Context;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method h0()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$f;->b:Z

    return v0
.end method

.method public h1()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method public final hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method i0()I
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$f;->e:I

    return v0
.end method

.method public i1(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method j0()I
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Landroidx/fragment/app/Fragment$f;->f:I

    return v0
.end method

.method public j1()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method k0()F
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_7
    iget v0, v0, Landroidx/fragment/app/Fragment$f;->r:F

    return v0
.end method

.method public k1()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method public l0()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->m:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->f0:Ljava/lang/Object;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Y()Ljava/lang/Object;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public l1(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final m0()Landroid/content/res/Resources;
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public m1(Landroid/os/Bundle;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method public n0()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->k:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->f0:Ljava/lang/Object;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->V()Ljava/lang/Object;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method n1(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->X0()V

    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->G0(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->Q1()V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {p1}, Landroidx/fragment/app/x;->y()V

    return-void

    :cond_1b
    new-instance p1, Landroidx/fragment/app/o0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o()Ly/c;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->a0:Ly/d;

    invoke-virtual {v0}, Ly/d;->b()Ly/c;

    move-result-object v0

    return-object v0
.end method

.method public o0()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->n:Ljava/lang/Object;

    return-object v0
.end method

.method o1()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment$i;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment$i;->a()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/x;->m(Landroidx/fragment/app/p;Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->J0(Landroid/content/Context;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/x;->I(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->z()V

    return-void

    :cond_43
    new-instance v0, Landroidx/fragment/app/o0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M1()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    return-void
.end method

.method public p0()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->o:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->f0:Ljava/lang/Object;

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->o0()Ljava/lang/Object;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method p1(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method q0()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    return-object v0

    :cond_a
    :goto_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method q1(Landroid/view/MenuItem;)Z
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->L0(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->B(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method r0()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroidx/fragment/app/Fragment$f;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroidx/fragment/app/Fragment$f;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    return-object v0

    :cond_a
    :goto_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method r1(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->X0()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->K:Z

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    new-instance v2, Landroidx/fragment/app/Fragment$6;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$6;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/h;)V

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->a0:Ly/d;

    invoke-virtual {v1, p1}, Ly/d;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->M0(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->T:Z

    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz p1, :cond_2b

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    sget-object v0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    return-void

    :cond_2b
    new-instance p1, Landroidx/fragment/app/o0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s0(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->m0()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method s1(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->P0(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/x;->D(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_18
    return v1
.end method

.method t1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->X0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->v:Z

    new-instance v0, Landroidx/fragment/app/k0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->R()Landroidx/lifecycle/d0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/k0;-><init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/d0;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->Q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz p1, :cond_3d

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-virtual {p1}, Landroidx/fragment/app/k0;->c()V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-static {p1, p2}, Landroidx/lifecycle/f0;->a(Landroid/view/View;Landroidx/lifecycle/i;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-static {p1, p2}, Landroidx/lifecycle/g0;->a(Landroid/view/View;Landroidx/lifecycle/e0;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-static {p1, p2}, Ly/f;->a(Landroid/view/View;Ly/e;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->Y:Landroidx/lifecycle/n;

    iget-object p2, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/n;->k(Ljava/lang/Object;)V

    goto :goto_48

    :cond_3d
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-virtual {p1}, Landroidx/fragment/app/k0;->d()Z

    move-result p1

    if-nez p1, :cond_49

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    :goto_48
    return-void

    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/Fragment;->B:I

    if-eqz v1, :cond_43

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/Fragment;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->D:Ljava/lang/String;

    if-eqz v1, :cond_51

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    return-object v0
.end method

.method u1()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->E()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/lifecycle/j;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->h(Landroidx/lifecycle/f$b;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->T:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->R0()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    new-instance v0, Landroidx/fragment/app/o0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v0()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/lifecycle/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Y:Landroidx/lifecycle/n;

    return-object v0
.end method

.method v1()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->F()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    invoke-virtual {v0}, Landroidx/fragment/app/k0;->a()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$c;->g:Landroidx/lifecycle/f$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroidx/fragment/app/k0;

    sget-object v1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->b(Landroidx/lifecycle/f$b;)V

    :cond_22
    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->T0()V

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v1, :cond_39

    invoke-static {p0}, Landroidx/loader/app/a;->b(Landroidx/lifecycle/i;)Landroidx/loader/app/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/loader/app/a;->c()V

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->v:Z

    return-void

    :cond_39
    new-instance v0, Landroidx/fragment/app/o0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method w1()V
    .registers 4

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->U0()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->H0()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->E()V

    new-instance v0, Landroidx/fragment/app/y;

    invoke-direct {v0}, Landroidx/fragment/app/y;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    :cond_24
    return-void

    :cond_25
    new-instance v0, Landroidx/fragment/app/o0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/o0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method x0()V
    .registers 4

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->w0()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->U:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->q:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->s:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->t:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->u:Z

    iput v0, p0, Landroidx/fragment/app/Fragment;->w:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->x:Landroidx/fragment/app/x;

    new-instance v2, Landroidx/fragment/app/y;

    invoke-direct {v2}, Landroidx/fragment/app/y;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->z:Landroidx/fragment/app/x;

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    iput v0, p0, Landroidx/fragment/app/Fragment;->B:I

    iput v0, p0, Landroidx/fragment/app/Fragment;->C:I

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->D:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method x1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->V0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method y1()V
    .registers 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public final z0()Z
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Landroidx/fragment/app/p;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method z1(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->Z0(Z)V

    return-void
.end method
