.class public final Lu/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/d$a;,
        Lu/d$b;,
        Lu/d$c;
    }
.end annotation


# static fields
.field public static final a:Lu/d;

.field private static b:Lu/d$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu/d;

    invoke-direct {v0}, Lu/d;-><init>()V

    sput-object v0, Lu/d;->a:Lu/d;

    sget-object v0, Lu/d$c;->e:Lu/d$c;

    sput-object v0, Lu/d;->b:Lu/d$c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lu/d$c;Lu/h;)V
    .registers 2

    invoke-static {p0, p1}, Lu/d;->e(Lu/d$c;Lu/h;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lu/h;)V
    .registers 2

    invoke-static {p0, p1}, Lu/d;->f(Ljava/lang/String;Lu/h;)V

    return-void
.end method

.method private final c(Landroidx/fragment/app/Fragment;)Lu/d$c;
    .registers 4

    :goto_0
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->z0()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object v0

    const-string v1, "declaringFragment.parentFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/x;->B0()Lu/d$c;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Landroidx/fragment/app/x;->B0()Lu/d$c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_1f
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->f0()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_24
    sget-object p1, Lu/d;->b:Lu/d$c;

    return-object p1
.end method

.method private final d(Lu/d$c;Lu/h;)V
    .registers 7

    invoke-virtual {p2}, Lu/h;->a()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lu/d$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lu/d$a;->e:Lu/d$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy violation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentStrictMode"

    invoke-static {v3, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    invoke-virtual {p1}, Lu/d$c;->b()Lu/d$b;

    move-result-object v2

    if-eqz v2, :cond_3c

    new-instance v2, Lu/b;

    invoke-direct {v2, p1, p2}, Lu/b;-><init>(Lu/d$c;Lu/h;)V

    invoke-direct {p0, v0, v2}, Lu/d;->l(Landroidx/fragment/app/Fragment;Ljava/lang/Runnable;)V

    :cond_3c
    invoke-virtual {p1}, Lu/d$c;->a()Ljava/util/Set;

    move-result-object p1

    sget-object v2, Lu/d$a;->f:Lu/d$a;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    new-instance p1, Lu/c;

    invoke-direct {p1, v1, p2}, Lu/c;-><init>(Ljava/lang/String;Lu/h;)V

    invoke-direct {p0, v0, p1}, Lu/d;->l(Landroidx/fragment/app/Fragment;Ljava/lang/Runnable;)V

    :cond_50
    return-void
.end method

.method private static final e(Lu/d$c;Lu/h;)V
    .registers 3

    const-string v0, "$policy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$violation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/d$c;->b()Lu/d$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lu/d$b;->a(Lu/h;)V

    return-void
.end method

.method private static final f(Ljava/lang/String;Lu/h;)V
    .registers 4

    const-string v0, "$violation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy violation with PENALTY_DEATH in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentStrictMode"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p1
.end method

.method private final g(Lu/h;)V
    .registers 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/x;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictMode violation in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu/h;->a()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    return-void
.end method

.method public static final h(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .registers 6

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousFragmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu/a;

    invoke-direct {v0, p0, p1}, Lu/a;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    sget-object p1, Lu/d;->a:Lu/d;

    invoke-direct {p1, v0}, Lu/d;->g(Lu/h;)V

    invoke-direct {p1, p0}, Lu/d;->c(Landroidx/fragment/app/Fragment;)Lu/d$c;

    move-result-object v1

    invoke-virtual {v1}, Lu/d$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lu/d$a;->g:Lu/d$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p1, v1, p0, v2}, Lu/d;->m(Lu/d$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-direct {p1, v1, v0}, Lu/d;->d(Lu/d$c;Lu/h;)V

    :cond_35
    return-void
.end method

.method public static final i(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V
    .registers 6

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu/e;

    invoke-direct {v0, p0, p1}, Lu/e;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    sget-object p1, Lu/d;->a:Lu/d;

    invoke-direct {p1, v0}, Lu/d;->g(Lu/h;)V

    invoke-direct {p1, p0}, Lu/d;->c(Landroidx/fragment/app/Fragment;)Lu/d$c;

    move-result-object v1

    invoke-virtual {v1}, Lu/d$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lu/d$a;->h:Lu/d$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p1, v1, p0, v2}, Lu/d;->m(Lu/d$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_30

    invoke-direct {p1, v1, v0}, Lu/d;->d(Lu/d$c;Lu/h;)V

    :cond_30
    return-void
.end method

.method public static final j(Landroidx/fragment/app/Fragment;)V
    .registers 6

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu/f;

    invoke-direct {v0, p0}, Lu/f;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lu/d;->a:Lu/d;

    invoke-direct {v1, v0}, Lu/d;->g(Lu/h;)V

    invoke-direct {v1, p0}, Lu/d;->c(Landroidx/fragment/app/Fragment;)Lu/d$c;

    move-result-object v2

    invoke-virtual {v2}, Lu/d$c;->a()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lu/d$a;->k:Lu/d$a;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lu/d;->m(Lu/d$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_30

    invoke-direct {v1, v2, v0}, Lu/d;->d(Lu/d$c;Lu/h;)V

    :cond_30
    return-void
.end method

.method public static final k(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V
    .registers 6

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu/i;

    invoke-direct {v0, p0, p1}, Lu/i;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    sget-object p1, Lu/d;->a:Lu/d;

    invoke-direct {p1, v0}, Lu/d;->g(Lu/h;)V

    invoke-direct {p1, p0}, Lu/d;->c(Landroidx/fragment/app/Fragment;)Lu/d$c;

    move-result-object v1

    invoke-virtual {v1}, Lu/d$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lu/d$a;->l:Lu/d$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p1, v1, p0, v2}, Lu/d;->m(Lu/d$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-direct {p1, v1, v0}, Lu/d;->d(Lu/d$c;Lu/h;)V

    :cond_35
    return-void
.end method

.method private final l(Landroidx/fragment/app/Fragment;Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->z0()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->g0()Landroidx/fragment/app/x;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/x;->v0()Landroidx/fragment/app/p;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/p;->h()Landroid/os/Handler;

    move-result-object p1

    const-string v0, "fragment.parentFragmentManager.host.handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_2a

    :cond_26
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2d

    :cond_2a
    :goto_2a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_2d
    return-void
.end method

.method private final m(Lu/d$c;Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/d$c;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lu/h;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lu/d$c;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const/4 p2, 0x1

    if-nez p1, :cond_12

    return p2

    :cond_12
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lu/h;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lb1/h;->k(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 p1, 0x0

    return p1

    :cond_2a
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p2

    return p1
.end method
