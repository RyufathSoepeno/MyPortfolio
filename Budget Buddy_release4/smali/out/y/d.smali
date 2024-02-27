.class public final Ly/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/d$a;
    }
.end annotation


# static fields
.field public static final d:Ly/d$a;


# instance fields
.field private final a:Ly/e;

.field private final b:Ly/c;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ly/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly/d$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Ly/d;->d:Ly/d$a;

    return-void
.end method

.method private constructor <init>(Ly/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/d;->a:Ly/e;

    new-instance p1, Ly/c;

    invoke-direct {p1}, Ly/c;-><init>()V

    iput-object p1, p0, Ly/d;->b:Ly/c;

    return-void
.end method

.method public synthetic constructor <init>(Ly/e;Lkotlin/jvm/internal/g;)V
    .registers 3

    invoke-direct {p0, p1}, Ly/d;-><init>(Ly/e;)V

    return-void
.end method

.method public static final a(Ly/e;)Ly/d;
    .registers 2

    sget-object v0, Ly/d;->d:Ly/d$a;

    invoke-virtual {v0, p0}, Ly/d$a;->a(Ly/e;)Ly/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Ly/c;
    .registers 2

    iget-object v0, p0, Ly/d;->b:Ly/c;

    return-object v0
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Ly/d;->a:Ly/e;

    invoke-interface {v0}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object v0

    const-string v1, "owner.lifecycle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_2b

    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Ly/d;->a:Ly/e;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Ly/e;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/h;)V

    iget-object v1, p0, Ly/d;->b:Ly/c;

    invoke-virtual {v1, v0}, Ly/c;->e(Landroidx/lifecycle/f;)V

    iput-boolean v3, p0, Ly/d;->c:Z

    return-void

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 5

    iget-boolean v0, p0, Ly/d;->c:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ly/d;->c()V

    :cond_7
    iget-object v0, p0, Ly/d;->a:Ly/e;

    invoke-interface {v0}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object v0

    const-string v1, "owner.lifecycle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/f$c;->h:Landroidx/lifecycle/f$c;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_26

    iget-object v0, p0, Ly/d;->b:Ly/c;

    invoke-virtual {v0, p1}, Ly/c;->f(Landroid/os/Bundle;)V

    return-void

    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performRestore cannot be called when owner is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly/d;->b:Ly/c;

    invoke-virtual {v0, p1}, Ly/c;->g(Landroid/os/Bundle;)V

    return-void
.end method
